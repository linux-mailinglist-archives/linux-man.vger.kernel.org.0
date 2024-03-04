Return-Path: <linux-man+bounces-512-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 29ECB87012D
	for <lists+linux-man@lfdr.de>; Mon,  4 Mar 2024 13:23:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DF020282625
	for <lists+linux-man@lfdr.de>; Mon,  4 Mar 2024 12:23:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F28B3C48C;
	Mon,  4 Mar 2024 12:23:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUhbItAS"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9D43C47A
	for <linux-man@vger.kernel.org>; Mon,  4 Mar 2024 12:23:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709555026; cv=none; b=KBSZEEFXsJNEjwaobfauV2zzzx1j+FwC2nC6MZv0oywRZwoNeiviq4A4Gbem60ESeaTnkpWr/EPM9HTy7dW+MEBOUFTL5Q3d+yWxEIHZO7us8k15EmTVkfWlLnP7T7mSBS/ahyGQb4f6MDT+sb3SnPxGmwSzNCE4DeXkA4XchnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709555026; c=relaxed/simple;
	bh=NMdfUF5rJV0bRB7G1AbVu1jzqzVE01zBTlso0Ku39pg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sjXypALp/lNiDhGRmvEF9x01xwbeGSEnse3RS/W9YxyLAfOy8XSuR6MbbhunqrvAqsmkfUFqI8bzmpiCBqUPkAmY8D0tPD19AbnupWXMeQ6gj43q0aSEOnFaQJf5Jnjlyusc7+NDaM4WUFmlTLEhEh87fCnPRgopg8LHtTfDGhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUhbItAS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E872C43390;
	Mon,  4 Mar 2024 12:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709555026;
	bh=NMdfUF5rJV0bRB7G1AbVu1jzqzVE01zBTlso0Ku39pg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EUhbItASe+Y9PMdbRFvyZc2mfM4Wp82PehUGgmF8RsFPxADYYZ2yggvHkfbGQWsZI
	 foK2y8zaz4RzeNHp1AGt28sbQbmYp/jEDx0H4Uwf9J0QdduluYxhqBhY0S9bTKqs1Z
	 YJTKEu/rNhEhAZJgDVEC6KiCJXvDIoVR9lAhVNK6Y5yLg4B6gyf/B0DxAxLlN6sd4A
	 dCcxYzF99YW8dcWhXcoERlc+Ms38AkVpkuverys/NwXuT+9tlDzFIpWLXcH/0hqE8V
	 mHX+BVapsxLO3wTcK3jdaaQXi01DkcmLrSnCGBW6KgIRyGFIld+m5cG8/6gz8+bjla
	 jXwpWBaycRHGg==
Date: Mon, 4 Mar 2024 13:23:33 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Cesar Enrique Garcia Dabo <cquike@arcor.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] Re: [Bug 218453] Update posixoptions to POSIX.1-2018
Message-ID: <ZeW9S9jF5vx9uJO2@debian>
References: <bug-218453-200555@https.bugzilla.kernel.org/>
 <bug-218453-200555-T9WUlcyTpD@https.bugzilla.kernel.org/>
 <21bbdbb3-4693-47f3-a140-534bb4877e2c@arcor.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1rouo62fbGhgGNed"
Content-Disposition: inline
In-Reply-To: <21bbdbb3-4693-47f3-a140-534bb4877e2c@arcor.de>


--1rouo62fbGhgGNed
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 4 Mar 2024 13:23:33 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Cesar Enrique Garcia Dabo <cquike@arcor.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] Re: [Bug 218453] Update posixoptions to POSIX.1-2018

Hi Cesar,

On Sat, Feb 03, 2024 at 04:48:27PM +0100, Cesar Enrique Garcia Dabo wrote:
> =C2=A0Sure!
>=20
> I hope this is the right mailing list :)

Yup, it is.

>=20
> Patch is attached.
>=20
> Best regards,
> Enrique
> > https://bugzilla.kernel.org/show_bug.cgi?id=3D218453
> >=20
> > --- Comment #5 from Alejandro Colomar (alx@kernel.org) ---
> > Hi Enrique,
> >=20
> > On Fri, Feb 02, 2024 at 08:55:07PM +0000, bugzilla-daemon@kernel.org wr=
ote:
> > > https://bugzilla.kernel.org/show_bug.cgi?id=3D218453
> > >=20
> > > --- Comment #4 from Enrique Garcia (cquike@arcor.de) ---
> > > I have created a patch that potentially implements the changes above.
> > Would you mind sending the patch(es) to the mailing list?
> >=20
> > Thanks,
> > Alex
> >=20

> From 161c3b77f278271c38f839064b3d8ac13e3f9279 Mon Sep 17 00:00:00 2001
> From: =3D?UTF-8?q?C=3DC3=3DA9sar=3D20Enrique=3D20Garc=3DC3=3DADa=3D20Dab=
=3DC3=3DB3?=3D
>  <cquike@arcor.de>
> Date: Fri, 2 Feb 2024 21:45:03 +0100
> Subject: [PATCH] Update posixoptions to POSIX.1-2018 version

You probably mean POSIX.1-2008.  (There's POSIX.1-2017, but it's just a
bugfix.)

See

$ MANWIDTH=3D72 man standards | grep '^ \{1,7\}POSIX.1.20'
     POSIX.1=E2=80=902001
     POSIX.1=E2=80=902008
     POSIX.1=E2=80=902017

>=20
> ---

Please add some more text.  Why are some things moved and described as
being optional in the past, and other just removed?

Thanks for the patch, and sorry for the delay!

Have a lovely day!
Alex

>  man7/posixoptions.7 | 367 +++-----------------------------------------
>  1 file changed, 23 insertions(+), 344 deletions(-)
>=20
> diff --git a/man7/posixoptions.7 b/man7/posixoptions.7
> index 8ca4df0ea..80284de2a 100644
> --- a/man7/posixoptions.7
> +++ b/man7/posixoptions.7
> @@ -26,6 +26,29 @@ parameter used to inquire about the option, and possib=
ly
>  a very short description.
>  Much more precise detail can be found in the POSIX standard itself,
>  versions of which can nowadays be accessed freely on the web.
> +.P

I prefer if we add a HISTORY section, and move there the historically-
optional parts.

That way, the DESCRIPTION is simple: if you see an option there, it's
optional.  No need to parse the text.

> +The followiing options were optional in previous versions of
> +the standard but are now mandatory under POSIX.1-2018 and are always
> +available:
> +.B _POSIX_CHOWN_RESTRICTED,
> +.B _POSIX_JOB_CONTROL,
> +.B _POSIX_NO_TRUNC,
> +.B _POSIX_REGEXP,
> +.B _POSIX_SAVED_IDS,
> +.B _POSIX_SHELL,
> +.B _POSIX_ASYNCHRONOUS_IO,
> +.B _POSIX_BARRIERS,
> +.B _POSIX_CLOCK_SELECTION,
> +.B _POSIX_MAPPED_FILES,
> +.B _POSIX_MEMORY_PROTECTION,
> +.B _POSIX_READER_WRITER_LOCKS,
> +.B _POSIX_REALTIME_SIGNALS,
> +.B _POSIX_SEMAPHORES,
> +.B _POSIX_SPIN_LOCKS,
> +.B _POSIX_THREAD_SAFE_FUNCTIONS,
> +.B _POSIX_THREADS,
> +.B _POSIX_TIMEOUTS,
> +.B _POSIX_TIMERS.
>  .SS ADV - _POSIX_ADVISORY_INFO - _SC_ADVISORY_INFO
>  The following advisory functions are present:
>  .P
> @@ -37,77 +60,6 @@ The following advisory functions are present:
>  .IR posix_madvise ()
>  .in
>  .fi
> -.SS AIO - _POSIX_ASYNCHRONOUS_IO - _SC_ASYNCHRONOUS_IO
> -The header
> -.I <aio.h>
> -is present.
> -The following functions are present:
> -.P
> -.nf
> -.in +4n
> -.IR aio_cancel ()
> -.IR aio_error ()
> -.IR aio_fsync ()
> -.IR aio_read ()
> -.IR aio_return ()
> -.IR aio_suspend ()
> -.IR aio_write ()
> -.IR lio_listio ()
> -.in
> -.fi
> -.SS BAR - _POSIX_BARRIERS - _SC_BARRIERS
> -This option implies the
> -.B _POSIX_THREADS
> -and
> -.B _POSIX_THREAD_SAFE_FUNCTIONS
> -options.
> -The following functions are present:
> -.P
> -.nf
> -.in +4n
> -.IR pthread_barrier_destroy ()
> -.IR pthread_barrier_init ()
> -.IR pthread_barrier_wait ()
> -.IR pthread_barrierattr_destroy ()
> -.IR pthread_barrierattr_init ()
> -.in
> -.fi
> -.\" .SS BE
> -.\" Batch environment.
> -.\" .SS CD
> -.\" C development.
> -.SS --- - POSIX_CHOWN_RESTRICTED
> -If this option is in effect (as it always is under POSIX.1-2001),
> -then only root may change the owner of a file, and nonroot can
> -set the group of a file only to one of the groups it belongs to.
> -This affects the following functions:
> -.P
> -.nf
> -.in +4n
> -.IR chown ()
> -.IR fchown ()
> -.in
> -.fi
> -.\" What about lchown() ?
> -.SS CS - _POSIX_CLOCK_SELECTION - _SC_CLOCK_SELECTION
> -This option implies the
> -.B _POSIX_TIMERS
> -option.
> -The following functions are present:
> -.P
> -.nf
> -.in +4n
> -.IR pthread_condattr_getclock ()
> -.IR pthread_condattr_setclock ()
> -.IR clock_nanosleep ()
> -.in
> -.fi
> -.P
> -If
> -.B CLOCK_REALTIME
> -is changed by the function
> -.IR clock_settime (),
> -then this affects all timers set for an absolute time.
>  .SS CPT - _POSIX_CPUTIME - _SC_CPUTIME
>  The
>  .B CLOCK_PROCESS_CPUTIME_ID
> @@ -123,45 +75,12 @@ is present.
>  .\" Fortran development
>  .\" .SS FR
>  .\" Fortran runtime
> -.SS --- - _POSIX_FILE_LOCKING - _SC_FILE_LOCKING
> -This option has been deleted.
> -Not in final XPG6.
>  .SS FSC - _POSIX_FSYNC - _SC_FSYNC
>  The function
>  .IR fsync ()
>  is present.
>  .SS IP6 - _POSIX_IPV6 - _SC_IPV6
>  Internet Protocol Version 6 is supported.
> -.SS --- - _POSIX_JOB_CONTROL - _SC_JOB_CONTROL
> -If this option is in effect (as it always is under POSIX.1-2001),
> -then the system implements POSIX-style job control,
> -and the following functions are present:
> -.P
> -.nf
> -.in +4n
> -.IR setpgid ()
> -.IR tcdrain ()
> -.IR tcflush ()
> -.IR tcgetpgrp ()
> -.IR tcsendbreak ()
> -.IR tcsetattr ()
> -.IR tcsetpgrp ()
> -.in
> -.fi
> -.SS MF - _POSIX_MAPPED_FILES - _SC_MAPPED_FILES
> -Shared memory is supported.
> -The include file
> -.I <sys/mman.h>
> -is present.
> -The following functions are present:
> -.P
> -.nf
> -.in +4n
> -.IR mmap ()
> -.IR msync ()
> -.IR munmap ()
> -.in
> -.fi
>  .SS ML - _POSIX_MEMLOCK - _SC_MEMLOCK
>  Shared memory can be locked into core.
>  The following functions are present:
> @@ -182,10 +101,6 @@ The following functions are present:
>  .IR munlock ()
>  .in
>  .fi
> -.SS MPR - _POSIX_MEMORY_PROTECTION - _SC_MEMORY_PROTECTION
> -The function
> -.IR mprotect ()
> -is present.
>  .SS MSG - _POSIX_MESSAGE_PASSING - _SC_MESSAGE_PASSING
>  The include file
>  .I <mqueue.h>
> @@ -221,18 +136,8 @@ The following functions are affected:
>  .IR timer_create ()
>  .in
>  .fi
> -.SS --- - _POSIX_MULTI_PROCESS - _SC_MULTI_PROCESS
> -This option has been deleted.
> -Not in final XPG6.
>  .\" .SS MX
>  .\" IEC 60559 Floating-Point Option.
> -.SS --- - _POSIX_NO_TRUNC
> -If this option is in effect (as it always is under POSIX.1-2001),
> -then pathname components longer than
> -.B NAME_MAX
> -are not truncated,
> -but give an error.
> -This property may be dependent on the path prefix of the component.
>  .SS PIO - _POSIX_PRIORITIZED_IO - _SC_PRIORITIZED_IO
>  This option says that one can specify priorities for asynchronous I/O.
>  This affects the functions
> @@ -284,90 +189,8 @@ The following functions are affected:
>  .IR setsockopt ()
>  .in
>  .fi
> -.SS --- - _POSIX_READER_WRITER_LOCKS - _SC_READER_WRITER_LOCKS
> -This option implies the
> -.B _POSIX_THREADS
> -option.
> -Conversely,
> -under POSIX.1-2001 the
> -.B _POSIX_THREADS
> -option implies this option.
> -.P
> -The following functions are present:
> -.P
> -.in +4n
> -.nf
> -.IR pthread_rwlock_destroy ()
> -.IR pthread_rwlock_init ()
> -.IR pthread_rwlock_rdlock ()
> -.IR pthread_rwlock_tryrdlock ()
> -.IR pthread_rwlock_trywrlock ()
> -.IR pthread_rwlock_unlock ()
> -.IR pthread_rwlock_wrlock ()
> -.IR pthread_rwlockattr_destroy ()
> -.IR pthread_rwlockattr_init ()
> -.in
> -.fi
> -.SS RTS - _POSIX_REALTIME_SIGNALS - _SC_REALTIME_SIGNALS
> -Realtime signals are supported.
> -The following functions are present:
> -.P
> -.nf
> -.in +4n
> -.IR sigqueue ()
> -.IR sigtimedwait ()
> -.IR sigwaitinfo ()
> -.in
> -.fi
> -.SS --- - _POSIX_REGEXP - _SC_REGEXP
> -If this option is in effect (as it always is under POSIX.1-2001),
> -then POSIX regular expressions are supported
> -and the following functions are present:
> -.P
> -.nf
> -.in +4n
> -.IR regcomp ()
> -.IR regerror ()
> -.IR regexec ()
> -.IR regfree ()
> -.in
> -.fi
> -.SS --- - _POSIX_SAVED_IDS - _SC_SAVED_IDS
> -If this option is in effect (as it always is under POSIX.1-2001),
> -then a process has a saved set-user-ID and a saved set-group-ID.
> -The following functions are affected:
> -.P
> -.nf
> -.in +4n
> -.IR exec ()
> -.IR kill ()
> -.IR seteuid ()
> -.IR setegid ()
> -.IR setgid ()
> -.IR setuid ()
> -.in
> -.fi
>  .\" .SS SD
>  .\" Software development
> -.SS SEM - _POSIX_SEMAPHORES - _SC_SEMAPHORES
> -The include file
> -.I <semaphore.h>
> -is present.
> -The following functions are present:
> -.P
> -.nf
> -.in +4n
> -.IR sem_close ()
> -.IR sem_destroy ()
> -.IR sem_getvalue ()
> -.IR sem_init ()
> -.IR sem_open ()
> -.IR sem_post ()
> -.IR sem_trywait ()
> -.IR sem_unlink ()
> -.IR sem_wait ()
> -.in
> -.fi
>  .SS SHM - _POSIX_SHARED_MEMORY_OBJECTS - _SC_SHARED_MEMORY_OBJECTS
>  The following functions are present:
>  .P
> @@ -379,11 +202,6 @@ The following functions are present:
>  .IR shm_unlink ()
>  .in
>  .fi
> -.SS --- - _POSIX_SHELL - _SC_SHELL
> -If this option is in effect (as it always is under POSIX.1-2001),
> -the function
> -.IR system ()
> -is present.
>  .SS SPN - _POSIX_SPAWN - _SC_SPAWN
>  This option describes support for process creation in a context where
>  it is difficult or impossible to use
> @@ -431,23 +249,6 @@ the following functions are present:
>  .IR posix_spawnattr_setschedpolicy ()
>  .in
>  .fi
> -.SS SPI - _POSIX_SPIN_LOCKS - _SC_SPIN_LOCKS
> -This option implies the
> -.B _POSIX_THREADS
> -and
> -.B _POSIX_THREAD_SAFE_FUNCTIONS
> -options.
> -The following functions are present:
> -.P
> -.nf
> -.in +4n
> -.IR pthread_spin_destroy ()
> -.IR pthread_spin_init ()
> -.IR pthread_spin_lock ()
> -.IR pthread_spin_trylock ()
> -.IR pthread_spin_unlock ()
> -.in -4n
> -.fi
>  .SS SS - _POSIX_SPORADIC_SERVER - _SC_SPORADIC_SERVER
>  The scheduling policy
>  .B SCHED_SPORADIC
> @@ -567,32 +368,6 @@ The following functions are affected:
>  .IR pthread_rwlockattr_setpshared ()
>  .in
>  .fi
> -.SS TSF - _POSIX_THREAD_SAFE_FUNCTIONS - _SC_THREAD_SAFE_FUNCTIONS
> -The following functions are affected:
> -.P
> -.nf
> -.in +4n
> -.IR readdir_r ()
> -.IR getgrgid_r ()
> -.IR getgrnam_r ()
> -.IR getpwnam_r ()
> -.IR getpwuid_r ()
> -.IR flockfile ()
> -.IR ftrylockfile ()
> -.IR funlockfile ()
> -.IR getc_unlocked ()
> -.IR getchar_unlocked ()
> -.IR putc_unlocked ()
> -.IR putchar_unlocked ()
> -.IR rand_r ()
> -.IR strerror_r ()
> -.IR strtok_r ()
> -.IR asctime_r ()
> -.IR ctime_r ()
> -.IR gmtime_r ()
> -.IR localtime_r ()
> -.in
> -.fi
>  .SS TSP - _POSIX_THREAD_SPORADIC_SERVER - _SC_THREAD_SPORADIC_SERVER
>  This option implies the
>  .B _POSIX_THREAD_PRIORITY_SCHEDULING
> @@ -606,92 +381,6 @@ The following functions are affected:
>  .IR sched_setscheduler ()
>  .in
>  .fi
> -.SS THR - _POSIX_THREADS - _SC_THREADS
> -Basic support for POSIX threads is available.
> -The following functions are present:
> -.P
> -.nf
> -.in +4n
> -.IR pthread_atfork ()
> -.IR pthread_attr_destroy ()
> -.IR pthread_attr_getdetachstate ()
> -.IR pthread_attr_getschedparam ()
> -.IR pthread_attr_init ()
> -.IR pthread_attr_setdetachstate ()
> -.IR pthread_attr_setschedparam ()
> -.IR pthread_cancel ()
> -.IR pthread_cleanup_push ()
> -.IR pthread_cleanup_pop ()
> -.IR pthread_cond_broadcast ()
> -.IR pthread_cond_destroy ()
> -.IR pthread_cond_init ()
> -.IR pthread_cond_signal ()
> -.IR pthread_cond_timedwait ()
> -.IR pthread_cond_wait ()
> -.IR pthread_condattr_destroy ()
> -.IR pthread_condattr_init ()
> -.IR pthread_create ()
> -.IR pthread_detach ()
> -.IR pthread_equal ()
> -.IR pthread_exit ()
> -.IR pthread_getspecific ()
> -.IR pthread_join ()
> -.IR pthread_key_create ()
> -.IR pthread_key_delete ()
> -.IR pthread_mutex_destroy ()
> -.IR pthread_mutex_init ()
> -.IR pthread_mutex_lock ()
> -.IR pthread_mutex_trylock ()
> -.IR pthread_mutex_unlock ()
> -.IR pthread_mutexattr_destroy ()
> -.IR pthread_mutexattr_init ()
> -.IR pthread_once ()
> -.IR pthread_rwlock_destroy ()
> -.IR pthread_rwlock_init ()
> -.IR pthread_rwlock_rdlock ()
> -.IR pthread_rwlock_tryrdlock ()
> -.IR pthread_rwlock_trywrlock ()
> -.IR pthread_rwlock_unlock ()
> -.IR pthread_rwlock_wrlock ()
> -.IR pthread_rwlockattr_destroy ()
> -.IR pthread_rwlockattr_init ()
> -.IR pthread_self ()
> -.IR pthread_setcancelstate ()
> -.IR pthread_setcanceltype ()
> -.IR pthread_setspecific ()
> -.IR pthread_testcancel ()
> -.in
> -.fi
> -.SS TMO - _POSIX_TIMEOUTS - _SC_TIMEOUTS
> -The following functions are present:
> -.P
> -.nf
> -.in +4n
> -.IR mq_timedreceive ()
> -.IR mq_timedsend ()
> -.IR pthread_mutex_timedlock ()
> -.IR pthread_rwlock_timedrdlock ()
> -.IR pthread_rwlock_timedwrlock ()
> -.IR sem_timedwait ()
> -.IR posix_trace_timedgetnext_event ()
> -.in
> -.fi
> -.SS TMR - _POSIX_TIMERS - _SC_TIMERS
> -The following functions are present:
> -.P
> -.nf
> -.in +4n
> -.IR clock_getres ()
> -.IR clock_gettime ()
> -.IR clock_settime ()
> -.IR nanosleep ()
> -.IR timer_create ()
> -.IR timer_delete ()
> -.IR timer_gettime ()
> -.IR timer_getoverrun ()
> -.IR timer_settime ()
> -.in
> -.fi
>  .SS TRC - _POSIX_TRACE - _SC_TRACE
>  POSIX tracing is available.
>  The following functions are present:
> @@ -974,19 +663,11 @@ This option implies the following options:
>  .TP
>  .B _POSIX_FSYNC
>  .TP
> -.B _POSIX_MAPPED_FILES
> -.TP
> -.B _POSIX_MEMORY_PROTECTION
> -.TP
>  .B _POSIX_THREAD_ATTR_STACKADDR
>  .TP
>  .B _POSIX_THREAD_ATTR_STACKSIZE
>  .TP
>  .B _POSIX_THREAD_PROCESS_SHARED
> -.TP
> -.B _POSIX_THREAD_SAFE_FUNCTIONS
> -.TP
> -.B _POSIX_THREADS
>  .PD
>  .P
>  This option may imply the following options from the XSI option groups:
> @@ -1006,8 +687,6 @@ This option may imply the following options from the=
 XSI option groups:
>  .RB "Tracing (" TRACING )
>  .TP
>  .RB "XSI Streams (" STREAMS )
> -.TP
> -.RB "Legacy (" _XOPEN_LEGACY )
>  .PD
>  .SH SEE ALSO
>  .BR sysconf (3),
> --=20
> 2.43.0
>=20


--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--1rouo62fbGhgGNed
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXlvUUACgkQnowa+77/
2zK07RAApSMUdWCIksxYtL/TVeV2797oi9eAv32dbO+lJT442B3K+AYhxMEfoH8z
R1x9ukGreelde0FlgWsAo1QrRdloJ68G/tVgcyCRtU6KxHuJM8DrOtM0H0gLuPWm
2OLzI9jJv++PuflCmyXxzNoQx/Osrug7DcJ9QPv3crvwkeu8wlJvmfLcrmnvnijh
QJQpm7KXexOnPSb7Ai4PDKqyMWG+sS1FL3J7vNRbVgo9PwD0GBC3eyDqYGSXF4pu
/vfHjP16B418JoEsLxv7in1g5TNGJB8tUcBrb+PDX9Iv82Ofa1pZT4KkqocBlBn/
oqptM9bBRdmakP5PcaSdmePtBAc3IxYBFdxoM0o1fGHlLhenCfMexiavUq+DrdWL
R3uJcSy7SqMBou8LVSgbHcjeDfM5Agelq2jQENXjje3VGLD/MmiyNXQl7UGUryav
QQbG8qnVfqIXuvA9SCmgv0n+TpCapaf1oMDkhqfuG6cHf89fZClGnwbKHsfgPoax
Ezni/DJ+ZnLXYFHdbOQpJD5//F51j1abQFhKPMHyfmJyBbRFAmdf6mFulg2IwMvF
jMlmkU+w1w+vFGs+pas4FRX95dfgKHd1CqF05dfip/OiW+nt+ax7XCc/oQUh2Zvn
EKuSkgMnHxwNYKdvJLTGvoEYVhZgaGGMUp2z59QcOqLD/+HkGo0=
=10zT
-----END PGP SIGNATURE-----

--1rouo62fbGhgGNed--

