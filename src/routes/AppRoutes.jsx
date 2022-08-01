/**
 * Application Routes
 */

// Dependencies
import React, { lazy, Suspense } from 'react'
import { Routes, Route, Navigate } from 'react-router-dom'

// Components
import DefaultSkeleton from '../components/reuseable/DefaultSkeleton'

// Pages
const Home = lazy(() => import('../pages/Home'));
const Contribute = lazy(() => import('../pages/Contribute'));
const Semester = lazy(() => import('../pages/Semester'));
const Contact = lazy(() => import('../pages/Contact'));
const Support = lazy(() => import('../pages/Support'));
const NotFound = lazy(() => import('../pages/NotFound'));

const AppRoutes = () => {

    return (
        <Suspense fallback={<DefaultSkeleton />}>
            <Routes>
                <Route path='/' exact element={<Home />} />
                <Route path='/contribute' element={<Contribute />} />
                <Route path='/notes/:currentSemester' element={<Semester />} />
                <Route path='/contact' element={<Contact />} />
                <Route path='/support' element={<Support />} />
                <Route path='/not-found' element={<NotFound />} />
                <Route path='*' element={<Navigate to='/not-found' />} />
            </Routes>
        </Suspense>
    )
}

export default AppRoutes