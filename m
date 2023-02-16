Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4CC4469A206
	for <lists+linux-man@lfdr.de>; Fri, 17 Feb 2023 00:01:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229566AbjBPXBO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 16 Feb 2023 18:01:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229448AbjBPXBN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 16 Feb 2023 18:01:13 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 060A9421A
        for <linux-man@vger.kernel.org>; Thu, 16 Feb 2023 15:01:11 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id r25so334067wrr.5
        for <linux-man@vger.kernel.org>; Thu, 16 Feb 2023 15:01:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bABX061x0QDTt5HV9gazt9WMV9fo3T82cjsqdUTJ4gI=;
        b=X+VRby/xXkHdixPWt6ZYPmTnMdKULpuGFAr4pi3oiq9PEnDN0cC28XnjE71RYsysrA
         UbE38386I/Ca5ly73JCeCpqkf3EIHigwTm0o393ZKFSG7AEbfNFjxE0+SlMfMOPexCc1
         etvaiiIvRcN0C0s9ufPeK0C3I55OJObVi4y1hsqzjQK0r0Isy6bwleIU17BO+CShfpTu
         b8poqixU9LupY6DoSiY5Gu8KUbJ6HCeSPY0KD4Hw6cPumvphkgvRdOqnDZy4zxTLvdKV
         8bsNWDUxJe1elU6tOrIfzZBHk0cOVWaLjcdin5QUAEddKLAlpIeNbzJMatnygdczjOkT
         MZpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bABX061x0QDTt5HV9gazt9WMV9fo3T82cjsqdUTJ4gI=;
        b=am1oHNr07BVrn3pvoEmBfGAkZLyLTEnvt0LMPHhN1/DD1wGeR/C4Cqk7y7ls71d6Vd
         dTvn55Sqq1K7O8Pn1ZlUiUCdLjNI9wKE5dvjwKNEltpdv+/rGlWCbt40FbdGvwmuTEEo
         5AjZFAJNNQBnh0g6z0nSa0MwcAd077BgI/mrmeFTYv4UaO4feXgLvesJr+8CwXgK2yDc
         7cuIJOzo5OMFKCikJIrxrkaDHsRlU3OvyVY+ZGG1ydfirAi+O/Ysk8wZfQPfYCce2CCC
         yuJB5MNosahPZ/hVsRcJ87rrV5T3ZjLi5HQ3UeLWvUTep1HEUjP+D7BG5N06SfvQuN/C
         KagQ==
X-Gm-Message-State: AO0yUKWy+le0H8tWzzZuazMeb07omywP1e3UiStIk1vRJlzqwnRByLch
        AQd17UhE62p3a+E/Ihk540c=
X-Google-Smtp-Source: AK7set9lSS/4aTnnR3Rlj2UoMHbEdN0nfcuQr/HllvfByfCkqKM7JKQKK4hRPpe9nR8sXoJbFq8yjw==
X-Received: by 2002:a5d:4690:0:b0:2c6:75be:f2d7 with SMTP id u16-20020a5d4690000000b002c675bef2d7mr150435wrq.51.1676588469184;
        Thu, 16 Feb 2023 15:01:09 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c4-20020adfe704000000b002c5534db60bsm2623853wrm.71.2023.02.16.15.01.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Feb 2023 15:01:08 -0800 (PST)
Message-ID: <cb47e19b-ba02-da3f-b253-ee8ddec28aa8@gmail.com>
Date:   Fri, 17 Feb 2023 00:01:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3 1/6] man2/: use IEC or ISO multiples to clarify long
 numeric digit strings
To:     Stefan Puiu <stefan.puiu@gmail.com>,
        Brian Inglis <Brian.Inglis@shaw.ca>
Cc:     Linux Man Pages <linux-man@vger.kernel.org>
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <4a3350ac873f45df96abf9045cfe1605839f490d.1676489381.git.Brian.Inglis@Shaw.ca>
 <CACKs7VB672Ka6GJQmVozS6n1kR+g8LoDuLtw1XuwSjKsttFBTg@mail.gmail.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CACKs7VB672Ka6GJQmVozS6n1kR+g8LoDuLtw1XuwSjKsttFBTg@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------970xElnLgjdejcceg1jFbaiG"
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------970xElnLgjdejcceg1jFbaiG
Content-Type: multipart/mixed; boundary="------------AvtpB3GUmaLhIxzrBaNam6Vk";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Stefan Puiu <stefan.puiu@gmail.com>, Brian Inglis <Brian.Inglis@shaw.ca>
Cc: Linux Man Pages <linux-man@vger.kernel.org>
Message-ID: <cb47e19b-ba02-da3f-b253-ee8ddec28aa8@gmail.com>
Subject: Re: [PATCH v3 1/6] man2/: use IEC or ISO multiples to clarify long
 numeric digit strings
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <4a3350ac873f45df96abf9045cfe1605839f490d.1676489381.git.Brian.Inglis@Shaw.ca>
 <CACKs7VB672Ka6GJQmVozS6n1kR+g8LoDuLtw1XuwSjKsttFBTg@mail.gmail.com>
In-Reply-To: <CACKs7VB672Ka6GJQmVozS6n1kR+g8LoDuLtw1XuwSjKsttFBTg@mail.gmail.com>

--------------AvtpB3GUmaLhIxzrBaNam6Vk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Stefan and Brian,

On 2/16/23 22:06, Stefan Puiu wrote:
> Hi Brian,
>=20
> On Wed, Feb 15, 2023 at 10:21 PM Brian Inglis <Brian.Inglis@shaw.ca> wr=
ote:
>>
>> ---
>>  man2/add_key.2           | 2 +-
>>  man2/epoll_wait.2        | 2 +-
>>  man2/fcntl.2             | 2 +-
>>  man2/getgroups.2         | 2 +-
>>  man2/ioctl_console.2     | 4 ++--
>>  man2/iopl.2              | 2 +-
>>  man2/madvise.2           | 4 ++--
>>  man2/mmap2.2             | 8 ++++----
>>  man2/request_key.2       | 2 +-
>>  man2/sched_setaffinity.2 | 4 ++--
>>  man2/seccomp.2           | 4 ++--
>>  man2/semop.2             | 4 ++--
>>  man2/sendmmsg.2          | 2 +-
>>  man2/shmget.2            | 4 ++--
>>  man2/syslog.2            | 6 +++---
>>  man2/vmsplice.2          | 2 +-
>>  16 files changed, 27 insertions(+), 27 deletions(-)
>>
>> diff --git a/man2/add_key.2 b/man2/add_key.2
>> index 56fc6d198d21..215de20baeae 100644
>> --- a/man2/add_key.2
>> +++ b/man2/add_key.2
>> @@ -167,7 +167,7 @@ The size of the string (including the terminating =
null byte) specified in
>>  .I type
>>  or
>>  .I description
>> -exceeded the limit (32 bytes and 4096 bytes respectively).
>> +exceeded the limit (32 bytes and 4Ki bytes respectively).
>=20
> For what it's worth, I find 4096 much clearer over 4Ki (what is Ki
> anyway?). Ditto for 32768 / 32Ki etc. What are we trying to achieve?

In this case, we should rather use 4\ KiB, which is standard.

In general, let's divide the patches so that we can apply those that
use standard syntax more easily, and then discuss more those that
are more informal.

>=20
>>  .TP
>>  .B EINVAL
>>  The payload data was invalid.
>> diff --git a/man2/epoll_wait.2 b/man2/epoll_wait.2
>> index 1620cff9dfcc..4863ae4a43fa 100644
>> --- a/man2/epoll_wait.2
>> +++ b/man2/epoll_wait.2
>> @@ -283,7 +283,7 @@ Thus, for example, on a system where
>>  .I sizeof(long)
>>  is 4 and the kernel
>>  .I HZ
>> -value is 1000,
>> +value is 1k,
>=20
> I still prefer the old version, my impression is that 1k and friends
> are used in informal contexts. Of course, it could be only my
> impression.

Thanks for sharing your impression.  I'll take it into consideration.

Cheers,

Alex

>=20
> Just my 2 cents,
> Stefan.
>=20
>>  this means that timeouts greater than 35.79 minutes are treated as in=
finity.
>>  .SH SEE ALSO
>>  .BR epoll_create (2),
>> diff --git a/man2/fcntl.2 b/man2/fcntl.2
>> index 3ec52dc4dc03..630fc55888bc 100644
>> --- a/man2/fcntl.2
>> +++ b/man2/fcntl.2
>> @@ -2004,7 +2004,7 @@ A limitation of the Linux system call convention=
s on some
>>  architectures (notably i386) means that if a (negative)
>>  process group ID to be returned by
>>  .B F_GETOWN
>> -falls in the range \-1 to \-4095, then the return value is wrongly
>> +falls in the range \-1 to \-4Ki-1, then the return value is wrongly
>>  interpreted by glibc as an error in the system call;
>>  .\" glibc source: sysdeps/unix/sysv/linux/i386/sysdep.h
>>  that is, the return value of
>> diff --git a/man2/getgroups.2 b/man2/getgroups.2
>> index 36300bf61b6a..f01af687ccbd 100644
>> --- a/man2/getgroups.2
>> +++ b/man2/getgroups.2
>> @@ -119,7 +119,7 @@ can additionally fail with the following errors:
>>  .I size
>>  is greater than
>>  .B NGROUPS_MAX
>> -(32 before Linux 2.6.4; 65536 since Linux 2.6.4).
>> +(32 before Linux 2.6.4; 64Ki since Linux 2.6.4).
>>  .TP
>>  .B ENOMEM
>>  Out of memory.
>> diff --git a/man2/ioctl_console.2 b/man2/ioctl_console.2
>> index 89f794c1956c..477e6fd1a7e1 100644
>> --- a/man2/ioctl_console.2
>> +++ b/man2/ioctl_console.2
>> @@ -171,7 +171,7 @@ bright cyan, and white.
>>  .B GIO_FONT
>>  Gets 256-character screen font in expanded form.
>>  .I argp
>> -points to an 8192-byte array.
>> +points to an 8Ki-byte array.
>>  Fails with error code
>>  .B EINVAL
>>  if the
>> @@ -211,7 +211,7 @@ Sets 256-character screen font.
>>  Load font into the EGA/VGA character
>>  generator.
>>  .I argp
>> -points to an 8192-byte map, with 32 bytes per
>> +points to an 8Ki-byte map, with 32 bytes per
>>  character.
>>  Only the first
>>  .I N
>> diff --git a/man2/iopl.2 b/man2/iopl.2
>> index abf1bef675fd..c967296157b7 100644
>> --- a/man2/iopl.2
>> +++ b/man2/iopl.2
>> @@ -34,7 +34,7 @@ Permissions are inherited from parents to children.
>>  This call is deprecated, is significantly slower than
>>  .BR ioperm (2),
>>  and is only provided for older X servers which require
>> -access to all 65536 I/O ports.
>> +access to all 64Ki I/O ports.
>>  It is mostly for the i386 architecture.
>>  On many other architectures it does not exist or will always
>>  return an error.
>> diff --git a/man2/madvise.2 b/man2/madvise.2
>> index 9b4652a635d3..e05e9c5de4a7 100644
>> --- a/man2/madvise.2
>> +++ b/man2/madvise.2
>> @@ -329,8 +329,8 @@ naturally aligned to the huge page size (see
>>  This feature is primarily aimed at applications that use large mappin=
gs of
>>  data and access large regions of that memory at a time (e.g., virtual=
ization
>>  systems such as QEMU).
>> -It can very easily waste memory (e.g., a 2\ MB mapping that only ever=
 accesses
>> -1 byte will result in 2\ MB of wired memory instead of one 4\ KB page=
).
>> +It can very easily waste memory (e.g., a 2\ MiB mapping that only eve=
r accesses
>> +1 byte will result in 2\ MiB of wired memory instead of one 4\ KiB pa=
ge).
>>  See the Linux kernel source file
>>  .I Documentation/admin\-guide/mm/transhuge.rst
>>  for more details.
>> diff --git a/man2/mmap2.2 b/man2/mmap2.2
>> index 1fd5732ad41b..f975c1388a77 100644
>> --- a/man2/mmap2.2
>> +++ b/man2/mmap2.2
>> @@ -32,7 +32,7 @@ The
>>  system call provides the same interface as
>>  .BR mmap (2),
>>  except that the final argument specifies the offset into the
>> -file in 4096-byte units (instead of bytes, as is done by
>> +file in 4Ki-byte units (instead of bytes, as is done by
>>  .BR mmap (2)).
>>  This enables applications that use a 32-bit
>>  .I off_t
>> @@ -50,8 +50,8 @@ is set to indicate the error.
>>  Problem with getting the data from user space.
>>  .TP
>>  .B EINVAL
>> -(Various platforms where the page size is not 4096 bytes.)
>> -.I "offset\ *\ 4096"
>> +(Various platforms where the page size is not 4Ki bytes.)
>> +.I "offset\ *\ 4Ki"
>>  is not a multiple of the system page size.
>>  .PP
>>  .BR mmap2 ()
>> @@ -74,7 +74,7 @@ This system call does not exist on x86-64.
>>  .PP
>>  On ia64, the unit for
>>  .I offset
>> -is actually the system page size, rather than 4096 bytes.
>> +is actually the system page size, rather than 4Ki bytes.
>>  .\" ia64 can have page sizes ranging from 4 kB to 64 kB.
>>  .\" On cris, it looks like the unit might also be the page size,
>>  .\" which is 8192 bytes. -- mtk, June 2007
>> diff --git a/man2/request_key.2 b/man2/request_key.2
>> index e78321e3c23f..dacc5282f3d8 100644
>> --- a/man2/request_key.2
>> +++ b/man2/request_key.2
>> @@ -399,7 +399,7 @@ The size of the string (including the terminating =
null byte) specified in
>>  .I type
>>  or
>>  .I description
>> -exceeded the limit (32 bytes and 4096 bytes respectively).
>> +exceeded the limit (32 bytes and 4Ki bytes respectively).
>>  .TP
>>  .B EINVAL
>>  The size of the string (including the terminating null byte) specifie=
d in
>> diff --git a/man2/sched_setaffinity.2 b/man2/sched_setaffinity.2
>> index 86a93539137d..9e7a26293e73 100644
>> --- a/man2/sched_setaffinity.2
>> +++ b/man2/sched_setaffinity.2
>> @@ -243,10 +243,10 @@ impose no restriction on the size of the CPU mas=
k.
>>  However, the
>>  .I cpu_set_t
>>  data type used by glibc has a fixed size of 128 bytes,
>> -meaning that the maximum CPU number that can be represented is 1023.
>> +meaning that the maximum CPU number that can be represented is 1\[aq]=
023.
>>  .\" FIXME . See https://sourceware.org/bugzilla/show_bug.cgi?id=3D156=
30
>>  .\" and https://sourceware.org/ml/libc-alpha/2013-07/msg00288.html
>> -If the kernel CPU affinity mask is larger than 1024,
>> +If the kernel CPU affinity mask is larger than 1Ki,
>>  then calls of the form:
>>  .PP
>>  .in +4n
>> diff --git a/man2/seccomp.2 b/man2/seccomp.2
>> index 32706397f03e..0bb8caa75698 100644
>> --- a/man2/seccomp.2
>> +++ b/man2/seccomp.2
>> @@ -836,7 +836,7 @@ but the filter program pointed to by
>>  .I args
>>  was not valid or the length of the filter program was zero or exceede=
d
>>  .B BPF_MAXINSNS
>> -(4096) instructions.
>> +(4Ki) instructions.
>>  .TP
>>  .B ENOMEM
>>  Out of memory.
>> @@ -846,7 +846,7 @@ Out of memory.
>>  The total length of all filter programs attached
>>  to the calling thread would exceed
>>  .B MAX_INSNS_PER_PATH
>> -(32768) instructions.
>> +(32Ki) instructions.
>>  Note that for the purposes of calculating this limit,
>>  each already existing filter program incurs an
>>  overhead penalty of 4 instructions.
>> diff --git a/man2/semop.2 b/man2/semop.2
>> index 7a1416a26894..a0027e0706c5 100644
>> --- a/man2/semop.2
>> +++ b/man2/semop.2
>> @@ -434,7 +434,7 @@ On Linux, this limit can be read and modified via =
the third field of
>>  .IR /proc/sys/kernel/sem .
>>  .\" This /proc file is not available in Linux 2.2 and earlier -- MTK
>>  .IR Note :
>> -this limit should not be raised above 1000,
>> +this limit should not be raised above 1\[aq]000,
>>  .\" See comment in Linux 3.19 source file include/uapi/linux/sem.h
>>  because of the risk of that
>>  .BR semop ()
>> @@ -445,7 +445,7 @@ array.
>>  .B SEMVMX
>>  Maximum allowable value for
>>  .IR semval :
>> -implementation dependent (32767).
>> +implementation dependent (32Ki-1).
>>  .PP
>>  The implementation has no intrinsic limits for
>>  the adjust on exit maximum value
>> diff --git a/man2/sendmmsg.2 b/man2/sendmmsg.2
>> index 4e5475c45a09..3f355382ebf6 100644
>> --- a/man2/sendmmsg.2
>> +++ b/man2/sendmmsg.2
>> @@ -139,7 +139,7 @@ The value specified in
>>  .I vlen
>>  is capped to
>>  .B UIO_MAXIOV
>> -(1024).
>> +(1Ki).
>>  .\" commit 98382f419f32d2c12d021943b87dea555677144b
>>  .\"     net: Cap number of elements for sendmmsg
>>  .\"
>> diff --git a/man2/shmget.2 b/man2/shmget.2
>> index c4d8df8ed619..5421fd4bf3e9 100644
>> --- a/man2/shmget.2
>> +++ b/man2/shmget.2
>> @@ -360,7 +360,7 @@ Because it is not possible to map just part of a s=
hared memory segment,
>>  the amount of virtual memory places another limit on the maximum size=
 of a
>>  usable segment:
>>  for example, on i386 the largest segments that can be mapped have a
>> -size of around 2.8\ GB, and on x86-64 the limit is around 127 TB.
>> +size of around 2.8\ GB, and on x86-64 the limit is around 127\ TB.
>>  .TP
>>  .B SHMMIN
>>  Minimum size in bytes for a shared memory segment: implementation
>> @@ -371,7 +371,7 @@ is the effective minimum size).
>>  .B SHMMNI
>>  System-wide limit on the number of shared memory segments.
>>  In Linux 2.2, the default value for this limit was 128;
>> -since Linux 2.4, the default value is 4096.
>> +since Linux 2.4, the default value is 4Ki.
>>  .IP
>>  On Linux, this limit can be read and modified via
>>  .IR /proc/sys/kernel/shmmni .
>> diff --git a/man2/syslog.2 b/man2/syslog.2
>> index 09c086f181e3..7d76e8cd9658 100644
>> --- a/man2/syslog.2
>> +++ b/man2/syslog.2
>> @@ -54,9 +54,9 @@ in which messages given as arguments to the kernel f=
unction
>>  are stored (regardless of their log level).
>>  In early kernels,
>>  .B LOG_BUF_LEN
>> -had the value 4096;
>> -from Linux 1.3.54, it was 8192;
>> -from Linux 2.1.113, it was 16384;
>> +had the value 4Ki;
>> +from Linux 1.3.54, it was 8Ki;
>> +from Linux 2.1.113, it was 16Ki;
>>  since Linux 2.4.23/2.6, the value is a kernel configuration option
>>  .RB ( CONFIG_LOG_BUF_SHIFT ,
>>  default value dependent on the architecture).
>> diff --git a/man2/vmsplice.2 b/man2/vmsplice.2
>> index 01ac37b3584f..08ede47361ae 100644
>> --- a/man2/vmsplice.2
>> +++ b/man2/vmsplice.2
>> @@ -149,7 +149,7 @@ as defined in
>>  .IR <limits.h> .
>>  Currently,
>>  .\" UIO_MAXIOV in kernel source
>> -this limit is 1024.
>> +this limit is 1Ki.
>>  .PP
>>  .\" commit 6a14b90bb6bc7cd83e2a444bf457a2ea645cbfe7
>>  .BR vmsplice ()
>> --
>> 2.39.0
>>

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------AvtpB3GUmaLhIxzrBaNam6Vk--

--------------970xElnLgjdejcceg1jFbaiG
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPutawACgkQnowa+77/
2zLPkg/+Nrn+TEAwZT4CbwbMzeNNYF6kD1LmeX6cO3+RbK/ryeIxanls5v956z8N
azNQdDGIfdw+XiFhicW6J6SZWAP0wCqSQD1P/qBZHzknJaLxK9mqak5YaGwh2vtw
IW2VsRVH/SdX10lEMsnyl9Y2xJQEWBe7iC80c/+OpnqPSHprDn4vlczYLRVHEeqT
JxsmGGQmd4d93jKZnZlibvxAqTU251HH9VQ1ARDin64ky9+ofdPA03LEe4Ipo4NJ
/iybqpErXIb8RrnStrHKTJeqmle5aUrTyW65oevVywS4MTRhLtDPozWoh2kAhgjL
t8P9C+NfOmsRDMksb9h6/7mogqBoXUx2NmykifhAPiaG/MOYYbHUHEGRvfJR3Sew
GoxdbqQk+ZMnBhnC/ri6cpFY6L1wVlLGwlslYJ9VJcY/ggHW9c8PFvDzmM1U3VeB
ulQEe5kCWJHiKsBUD+n5TBFNWHG3Sfr5rKTv5vw/cwmOtmS560fyZOkEho6TfAhh
+Vhm9YBmP9lMqboNNE7KTaoOFAcSIvcg7tIp02movtjHrIf4S9yKWYnEWs9LMSMf
kwmSkP2YNTPjj+s1agZ4yx4P9GHDMgLvIdJteQThuyBzVXhvmtQNMc2ziSg6rT1I
rak+vwwj//SdoCgdbA3MNZ8k5cGNaSnajesTBOYwpdUCUfZfZkM=
=7uQl
-----END PGP SIGNATURE-----

--------------970xElnLgjdejcceg1jFbaiG--
