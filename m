Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E935C7DDF30
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 11:16:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231719AbjKAKQx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 06:16:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233397AbjKAKQx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 06:16:53 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCD5AF4
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 03:16:46 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58C93C433C8;
        Wed,  1 Nov 2023 10:16:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698833806;
        bh=PjVJvboU7Yl4zaijjliAQIqTfigpQmPME5eG4qsR7Rs=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=jk2TzCD+0rx7U987vxtSNr5M8oiQ2KAEVnEICkNbSwnuKMNzMVGhDO5XUlUgBtfeb
         zhZC0/wnw7xwPUiO/MjSI5io2LO0Ys70zjRgALi/uIVm/3d4fnuTkrnRwRRk3VDl+L
         dYVelF6/fq6tNiMnG+13BjHAUju+NyMzw7PkbMjkQSgYnc4CgdynUaSyJh9eeyGNCG
         IayatvQWoYRUcKoiBVV6d8t5v8A+4anlHfAbjRZvIe54ae/2dcetZcyO0XAzBlkNVW
         v5/jtRgX3RrO0s4iX1Wx7ixF1zCzfTs7kl6jl5bSrZh0nVFdtvfXklth6F7Lk9wGyA
         ARb7Lj8NVUI4Q==
Date:   Wed, 1 Nov 2023 11:16:36 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     enh <enh@google.com>
Cc:     Stefan Puiu <stefan.puiu@gmail.com>,
        Bruno Haible <bruno@clisp.org>, linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>
Subject: Re: [PATCH] prctl.2: Fix typo
Message-ID: <ZUIlirG-ypudgpbK@debian>
References: <4678853.9Mp67QZiUf@nimes>
 <ZUD12kxqzd0PsT_E@debian>
 <CACKs7VCi-MZfrhPLGqPDz71ciTBkKGriMwJQAy16WoP--P6=QQ@mail.gmail.com>
 <ZUEnQmDDLwwfCd_g@debian>
 <CAJgzZorygh1++Nk3b+t_DhiROL5PQAme+H-ZaKjW9oscu2=LSg@mail.gmail.com>
 <ZUFKMkXrsvahfK3k@debian>
 <CAJgzZoo+szFoHqY-V+1Fuv0wp6tvGwwxsc0na89FYdqZ3Z7gfA@mail.gmail.com>
 <ZUFwNEo6z8MCHjgA@debian>
 <CAJgzZoo151wk8Zk8thO-xbztGEpPcoXUbFAaNRmYMyUcRUB=fg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="+h+FRrGZ2/ILrthi"
Content-Disposition: inline
In-Reply-To: <CAJgzZoo151wk8Zk8thO-xbztGEpPcoXUbFAaNRmYMyUcRUB=fg@mail.gmail.com>
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--+h+FRrGZ2/ILrthi
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 11:16:36 +0100
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: Stefan Puiu <stefan.puiu@gmail.com>, Bruno Haible <bruno@clisp.org>,
	linux-man@vger.kernel.org,
	GNU C Library <libc-alpha@sourceware.org>
Subject: Re: [PATCH] prctl.2: Fix typo

On Tue, Oct 31, 2023 at 05:37:03PM -0700, enh wrote:
> fwiw, here's the full list of "cmd"s, "request"s, "op"s, and "option"s
> (manually edited to remove the legit "option"s like getsockopt()):

Thanks!  This'll be very helpful.

>=20
> ~/aosp-main-with-phones/bionic/libc/include$ egrep -r
> '__(cmd|option|request|op)\b' | sort
> bits/fcntl.h:int fcntl(int __fd, int __cmd, ...);
> bits/ioctl.h:int ioctl(int __fd, int __request, ...);
> bits/lockf.h:int lockf(int __fd, int __cmd, off_t __length)
> __RENAME_IF_FILE_OFFSET64(lockf64) __INTRODUCED_IN(24);
> sys/epoll.h:int epoll_ctl(int __epoll_fd, int __op, int __fd, struct
> epoll_event* __BIONIC_COMPLICATED_NULLNESS __event);
> sys/file.h:int flock(int __fd, int __op);
> syslog.h:void openlog(const char* _Nullable __prefix, int __option,
> int __facility);
> sys/msg.h:int msgctl(int __msg_id, int __cmd, struct msqid_ds*
> _Nullable __buf) __INTRODUCED_IN(26);
> sys/prctl.h:int prctl(int __option, ...);
> sys/ptrace.h:long ptrace(int __request, ...);
> sys/quota.h:int quotactl(int __cmd, const char* _Nullable __special,
> int __id, char* __BIONIC_COMPLICATED_NULLNESS __addr)
> __INTRODUCED_IN(26);
> sys/reboot.h:int reboot(int __cmd);
> sys/sem.h:int semctl(int __sem_id, int __sem_num, int __cmd, ...)
> __INTRODUCED_IN(26);
> sys/shm.h:int shmctl(int __shm_id, int __cmd, struct shmid_ds*
> _Nullable __buf) __INTRODUCED_IN(26);
> time.h:int clock_nanosleep(clockid_t __clock, int __flags, const
> struct timespec* _Nonnull __request, struct timespec* _Nullable
> __remainder);
> time.h:int nanosleep(const struct timespec* _Nonnull __request, struct
> timespec* _Nullable __remainder);
> ~/aosp-main-with-phones/bionic/libc/include$
>=20
> (i'll change the <time.h> *sleep()s to use __duration instead:
> https://android-review.googlesource.com/c/platform/bionic/+/2813844)

LGTM.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--+h+FRrGZ2/ILrthi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCJYQACgkQnowa+77/
2zJ2pw//b3Rs4ugzlGXL9Gp6UOi26aT9jgnaLLQNFvHvAQGwLG+v3w18Is0qKPIF
qoaaNs8kBVCWi87nU6OlD+IOPj9fcKrOvOTkUoQUitBJY6xfRG+E1hfTlI+ai/qm
6itNfCQAxBek2Xiu696vfBzNeRxKqlqcYNjpT0PyucEBthH+bWg51MwUERpNKeqI
TT1i4m4hMaqSy3NeATWXPtBMkHcMdIX9A4lcGfN16MqKdSL9FrQEcrsqL1HrXTA0
sbZQDYlXlCq0vW3IJstsdT2+9KfzXdHve4ntZ1EhA3ignb+a5qXwUtlmwC342uNH
ULS9Tnt4w97ljACfyTwJEIJ3LF2fEUFJ8YlS7AJQLFP83T9jxfxxVh74amcGTF8V
5iM9q4GEt1d3mrPPqPfNGZbK6qWtt7UtyX9oMFafkdREhj9+zFzwPiqqMwSoAOLM
B5i4HhTZU1/42oxQodRmAzAmCV0V464mn51E30pbLlHzkvq7EnBdEDmHjncyOQk8
XmaNlybFf9yPBu9JLcFkUROWzciEquSE6QDkoKpk2AL7D9L9rpxlrHVWRBE0yWwG
fhk03u+fAgBhqyrOEDPmmrDjfG2YwLNiyIEqmJISU3lrAdDPS30fcd21H4eFJXa6
/Rs3UrICCcxM+mjYlxEkwgEIlkToUxCiA6qbgGzg/y5rtkGiaHc=
=HbvZ
-----END PGP SIGNATURE-----

--+h+FRrGZ2/ILrthi--
