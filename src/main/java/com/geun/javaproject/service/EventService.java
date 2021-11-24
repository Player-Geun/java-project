package com.geun.javaproject.service;

import com.geun.javaproject.dto.EventDTO;
import com.geun.javaproject.repository.EventRepository;
import com.querydsl.core.types.Predicate;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.StreamSupport;

@Service
@RequiredArgsConstructor
public class EventService {

    private final EventRepository eventRepository;

    public List<EventDTO> getEvents(Predicate predicate){
        return StreamSupport.stream(eventRepository.findAll(predicate).spliterator(), false)
                .map(EventDTO::of)
                .toList();
    }

    public Optional<EventDTO> getEvent(Long eventId) {
        return eventRepository.findById(eventId).map(EventDTO::of);
    }

    public boolean createEvent(EventDTO eventDTO) {
        if (eventDTO == null) {
            return false;
        }

        return true;
    }

    public boolean modifyEvent(Long eventId, EventDTO dto) {
        if (eventId == null || dto == null) {
            return false;
        }

        eventRepository.findById(eventId)
                .ifPresent(event -> eventRepository.save(dto.updateEntity(event)));

        return true;
    }

    public boolean removeEvent(Long eventId) {
        if (eventId == null) {
            return false;
        }

        eventRepository.deleteById(eventId);
        return true;
    }
}
