Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 84B882E82A9
	for <lists+linux-man@lfdr.de>; Fri,  1 Jan 2021 00:30:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727058AbgLaXal (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 31 Dec 2020 18:30:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727057AbgLaXal (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 31 Dec 2020 18:30:41 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62153C061573
        for <linux-man@vger.kernel.org>; Thu, 31 Dec 2020 15:30:00 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id r3so21113328wrt.2
        for <linux-man@vger.kernel.org>; Thu, 31 Dec 2020 15:30:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+P+9FxkOLNKhbF2PcrxshTtPGwokts5R8wy32QdI9NQ=;
        b=JMm3IfvgKhIkiQD6LxFBoX3wglmV9iPaufQLdGIsTk0c0+G8RXJhAeC411Xdp9vvDg
         vI4Got9et8/ch8tFP1ceNQ39iu3yaj0rGDbzjmDwKUw/+uriXxcBXMrSZHT1fsWFZKFA
         2pxb/hzvsK9wKRFHJsazOKkwCx8D9yDKTiMsWEfVz3mS3adYgERsoBiF/q7sWRROQmyQ
         oxNLbcH26mKDl+kDwf3nlu0cxxad2UmkwLhR+Lpmjh5l7oHTAunJQh3HcYG28/wdMLN7
         smqEtdckVdw50pLbq7e3hAPhy+TXvpvWCHxmA9pBq5gXSFkb50ds0WENszI308723qtz
         vyEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+P+9FxkOLNKhbF2PcrxshTtPGwokts5R8wy32QdI9NQ=;
        b=PEcXPhID0qLG9+fedQaHmDe02oNZqt7pGFq+Q2N09jvwJQFXngb4HFjyaJKwl9sBKl
         HOOE+mmw14GZMK5SXRKFdev9fAWabgehmLa+9c2QmiFkbnyuylTAnrNKuVswPPTYX4Qd
         s80D30eUt8OukRUnde7mfk81Z6lNZTnU2Zr6ld6K4BnFijhn0rlPw+UrhVveZirNmMVj
         1kS05DceKplTXFzxHqFgZEkA86VYMCNKg3fgF5lrmvnByAkTAniEIXeM3s4691dJP1V0
         LY5DKcj1NBSQsAZr+Bc5uQKZrAOYyexCSuJHOkKgyg0TrTcm+fxUqvDBsKH6u1W3zBZI
         0LLA==
X-Gm-Message-State: AOAM531yX7Pv119ZEQZHOOJ0Sc3vEecg1f+OH0XFSWuaekxnS1BzG/ln
        Hmwfv3qYEZFvTzjGf00FdiTV+4CzsFo=
X-Google-Smtp-Source: ABdhPJwA6AsPNuC4ESkrkLCFfSEWlsJxjtr4xW6xteWlxrUzTrZDMikyhiKiFzCbxGSUQP8rFgG32Q==
X-Received: by 2002:a5d:4307:: with SMTP id h7mr67042160wrq.353.1609457398930;
        Thu, 31 Dec 2020 15:29:58 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id u13sm72593763wrw.11.2020.12.31.15.29.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Dec 2020 15:29:58 -0800 (PST)
Subject: Re: [PATCH] execveat.2: srcfix
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <20201230214147.874671-1-alx.manpages@gmail.com>
 <CAKgNAkjf8gS5Av2pzYqt_JHjjnCw-FrjqQicjhr20+MzgsK3Xg@mail.gmail.com>
 <bdda57ff-acdd-9109-5720-ba0db8138d41@gmail.com>
 <993e801d-4126-4e11-5a06-4b92879a7eb7@gmail.com>
 <2f321c87-7e12-2c41-6cd6-ac55024caf0a@gmail.com>
 <6c9c593c-1e89-ce75-c1d0-41e61c98bad7@gmail.com>
 <a6391e7c-6036-33ad-0512-88663307abde@gmail.com>
Message-ID: <f306da07-e45d-2320-32a3-46f0955b3209@gmail.com>
Date:   Fri, 1 Jan 2021 00:29:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <a6391e7c-6036-33ad-0512-88663307abde@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 12/31/20 7:55 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> I'm not sure about some cases, but have a look at this:
> 
> a64l.3: compact
> asprintf.3: compact
> atan.3: wsfix
> backtrace.3: compact
> bstring.3: compact? (and maybe align names?)
> byteorder.3: compact
> catopen.3: compact
> closedir.3: compact
> cmsg.3: separate headers from declarations
> dl_iterate_phdr.3: wsfix: 's/) (/)(/'
> drand48.3: group functions as in DESCRIPTION
> drand48_r.3: ^
> envz_add.3: compact?
> fgetc.3: compact
> fseek.3: ffix!!
> 	and then compact
> fseeko.3: compact
> fts.3: compact (and maybe align?)
> futimes.3: compact
> getaddrinfo_a.3: fix alignment (and maybe compact?)
> getdirentries.3: ffix!
> getfsent.3: compact
> getgrent.3: compact
> getgrent_r.3: compact?
> getgrnam.3: compact? or sort? or nothing? not sure
> gethostbyname.3: separate headers from declarations?
> getline.3: compact
> getmntent.3: compact
> getspnam.3: compact or group
> getttyent.3: ffix!!
> gsignal.3: group
> hsearch.3: group
> if_nametoindex.3: group
> inet.3: group
> insque.3: group
> isgreater.3: compact or group
> key_setsecret.3: compact
> login.3: group
> makecontext.3: compact
> malloc_get_state.3: compact
> malloc_hook.3: compact
> mcheck.3: compact
> memchr.3: compact
> mkstemp.3: compact
> mpool.3: compact
> mq_getattr.3: compact and fix alignment
> mtrave.3: compact
> newlocale.3: compact
> pthread_attr_setschedpolicy.3: ffix: fit into 78-col terminal per
> Branden's advise.
> pthread_cleanup_push.3: ffix: Join lines
> pthread_cleanup_push_defer_np.3: ffix: Join lines
> pthread_setname_np.3: ffix: Join lines
> pthread_tryjoin_np.3: compact
> puts.3: compact
> rand.3: compact or group
> random[_r].3: group or compact
> re_comp.3: compact
> recno.3: There are no APIs? Why not?
> regex.3: compact?
> 
> I didn't read past that.

Hi Michael,

I've seen some of the 'ffix!!' problems are caused by a yet missing
[.nf/.fi].
So when you finish the patch I guess they'll vanish.
Still have a look at some of them, though, as there might be other causes.

> 
> BTW, Why didn't you include man2?
[...]

>>
>> What do you think about the work-in-progess patch below? The following
>> may be useful for review:
>>
>> for p in $(git grep -l 'SYN' man[3-8]); do 
>>     echo "===================== $p"; man -l $p  2> /dev/null  | 
>>         sed -n '/^SYNOP/,/DESCR/p' | sed '/Feat/,$d';
>> done | less

I see now that the patch has changed man2, but the script above only
shows man3 and above.  I guess those were the ones you had pending,
right? :)

Send me the next revision when you have it to have another look at it.
Although the render looks weird on some cases because it's not yet
finished, the diff looks good to me.

Cheers,

Alex

>>
>> Cheers,
>>
>> Michael
>>
>>
>> diff --git a/man2/init_module.2 b/man2/init_module.2
>> index 00cf4e948..51e00ca65 100644
>> --- a/man2/init_module.2
>> +++ b/man2/init_module.2
>> @@ -31,7 +31,6 @@ init_module, finit_module \- load a kernel module
>>  .nf
>>  .BI "int init_module(void *" module_image ", unsigned long " len ,
>>  .BI "                const char *" param_values );
>> -.PP
>>  .BI "int finit_module(int " fd ", const char *" param_values ,
>>  .BI "                 int " flags );
>>  .fi
>> diff --git a/man2/readv.2 b/man2/readv.2
>> index fcc27632e..2783fd736 100644
>> --- a/man2/readv.2
>> +++ b/man2/readv.2
>> @@ -37,18 +37,15 @@ readv, writev, preadv, pwritev, preadv2, pwritev2 \- read or write data into mul
>>  .B #include <sys/uio.h>
>>  .PP
>>  .BI "ssize_t readv(int " fd ", const struct iovec *" iov ", int " iovcnt );
>> -.PP
>>  .BI "ssize_t writev(int " fd ", const struct iovec *" iov ", int " iovcnt );
>>  .PP
>>  .BI "ssize_t preadv(int " fd ", const struct iovec *" iov ", int " iovcnt ,
>>  .BI "               off_t " offset );
>> -.PP
>>  .BI "ssize_t pwritev(int " fd ", const struct iovec *" iov ", int " iovcnt ,
>>  .BI "                off_t " offset );
>>  .PP
>>  .BI "ssize_t preadv2(int " fd ", const struct iovec *" iov ", int " iovcnt ,
>>  .BI "                off_t " offset ", int " flags );
>> -.PP
>>  .BI "ssize_t pwritev2(int " fd ", const struct iovec *" iov ", int " iovcnt ,
>>  .BI "                 off_t " offset ", int " flags );
>>  .fi
>> diff --git a/man2/rename.2 b/man2/rename.2
>> index dd230df59..a577e35e5 100644
>> --- a/man2/rename.2
>> +++ b/man2/rename.2
>> @@ -44,7 +44,6 @@ rename, renameat, renameat2 \- change the name or location of a file
>>  .PP
>>  .BI "int renameat(int " olddirfd ", const char *" oldpath ,
>>  .BI "             int " newdirfd ", const char *" newpath );
>> -.PP
>>  .BI "int renameat2(int " olddirfd ", const char *" oldpath ,
>>  .BI "              int " newdirfd ", const char *" newpath \
>>  ", unsigned int " flags );
>> diff --git a/man2/sched_get_priority_max.2 b/man2/sched_get_priority_max.2
>> index a22fc5969..0f9fa258d 100644
>> --- a/man2/sched_get_priority_max.2
>> +++ b/man2/sched_get_priority_max.2
>> @@ -30,11 +30,12 @@
>>  .SH NAME
>>  sched_get_priority_max, sched_get_priority_min  \- get static priority range
>>  .SH SYNOPSIS
>> +.nf
>>  .B #include <sched.h>
>>  .PP
>>  .BI "int sched_get_priority_max(int " policy );
>> -.PP
>>  .BI "int sched_get_priority_min(int " policy );
>> +.fi
>>  .SH DESCRIPTION
>>  .BR sched_get_priority_max ()
>>  returns the maximum priority value that can be used with the
>> diff --git a/man2/sched_setaffinity.2 b/man2/sched_setaffinity.2
>> index 4abb720fd..61bb7bb38 100644
>> --- a/man2/sched_setaffinity.2
>> +++ b/man2/sched_setaffinity.2
>> @@ -42,7 +42,6 @@ set and get a thread's CPU affinity mask
>>  .PP
>>  .BI "int sched_setaffinity(pid_t " pid ", size_t " cpusetsize ,
>>  .BI "                      const cpu_set_t *" mask );
>> -.PP
>>  .BI "int sched_getaffinity(pid_t " pid ", size_t " cpusetsize ,
>>  .BI "                      cpu_set_t *" mask );
>>  .fi
>> diff --git a/man2/sched_setattr.2 b/man2/sched_setattr.2
>> index b741c2223..3d255f622 100644
>> --- a/man2/sched_setattr.2
>> +++ b/man2/sched_setattr.2
>> @@ -33,7 +33,6 @@ set and get scheduling policy and attributes
>>  .PP
>>  .BI "int sched_setattr(pid_t " pid ", struct sched_attr *" attr ,
>>  .BI "                  unsigned int " flags );
>> -.PP
>>  .BI "int sched_getattr(pid_t " pid ", struct sched_attr *" attr ,
>>  .BI "                  unsigned int " size ", unsigned int " flags );
>>  .fi
>> diff --git a/man2/sched_setparam.2 b/man2/sched_setparam.2
>> index ffa785129..1bca5b48f 100644
>> --- a/man2/sched_setparam.2
>> +++ b/man2/sched_setparam.2
>> @@ -35,7 +35,6 @@ sched_setparam, sched_getparam \- set and get scheduling parameters
>>  .B #include <sched.h>
>>  .PP
>>  .BI "int sched_setparam(pid_t " pid ", const struct sched_param *" param );
>> -.PP
>>  .BI "int sched_getparam(pid_t " pid ", struct sched_param *" param );
>>  .PP
>>  \fBstruct sched_param {
>> diff --git a/man2/sched_setscheduler.2 b/man2/sched_setscheduler.2
>> index fde20825f..07bcf733d 100644
>> --- a/man2/sched_setscheduler.2
>> +++ b/man2/sched_setscheduler.2
>> @@ -33,7 +33,6 @@ set and get scheduling policy/parameters
>>  .PP
>>  .BI "int sched_setscheduler(pid_t " pid ", int " policy ,
>>  .BI "                       const struct sched_param *" param );
>> -.PP
>>  .BI "int sched_getscheduler(pid_t " pid );
>>  .fi
>>  .SH DESCRIPTION
>> diff --git a/man2/sysfs.2 b/man2/sysfs.2
>> index de6d02a11..a037d1c9d 100644
>> --- a/man2/sysfs.2
>> +++ b/man2/sysfs.2
>> @@ -28,11 +28,11 @@
>>  .SH NAME
>>  sysfs \- get filesystem type information
>>  .SH SYNOPSIS
>> +.nf
>>  .BI "int sysfs(int " option ", const char *" fsname );
>> -.PP
>>  .BI "int sysfs(int " option ", unsigned int " fs_index ", char *" buf );
>> -.PP
>>  .BI "int sysfs(int " option );
>> +.fi
>>  .SH DESCRIPTION
>>  .BR "Note" :
>>  if you are looking for information about the
>> diff --git a/man2/umount.2 b/man2/umount.2
>> index 3e6e10785..7942df49a 100644
>> --- a/man2/umount.2
>> +++ b/man2/umount.2
>> @@ -35,7 +35,6 @@ umount, umount2 \- unmount filesystem
>>  .B "#include <sys/mount.h>"
>>  .PP
>>  .BI "int umount(const char *" target );
>> -.PP
>>  .BI "int umount2(const char *" target ", int " flags );
>>  .fi
>>  .SH DESCRIPTION
>> diff --git a/man2/wait4.2 b/man2/wait4.2
>> index f858d9eb3..c2b0a3497 100644
>> --- a/man2/wait4.2
>> +++ b/man2/wait4.2
>> @@ -40,9 +40,7 @@ wait3, wait4 \- wait for process to change state, BSD style
>>  .B #include <sys/resource.h>
>>  .B #include <sys/wait.h>
>>  .PP
>> -.BI "pid_t wait3(int *" "wstatus" ", int " options ,
>> -.BI "            struct rusage *" rusage );
>> -.PP
>> +.BI "pid_t wait3(int *" "wstatus" ", int " options ", struct rusage *" rusage );
>>  .BI "pid_t wait4(pid_t " pid ", int *" wstatus ", int " options ,
>>  .BI "            struct rusage *" rusage );
>>  .fi
>> diff --git a/man3/__ppc_get_timebase.3 b/man3/__ppc_get_timebase.3
>> index c229117b8..dc96b3875 100644
>> --- a/man3/__ppc_get_timebase.3
>> +++ b/man3/__ppc_get_timebase.3
>> @@ -28,11 +28,12 @@ Manual"
>>  __ppc_get_timebase, __ppc_get_timebase_freq \- get the current value
>>   of the Time Base Register on Power architecture and its frequency.
>>  .SH SYNOPSIS
>> +.nf
>>  .B #include <sys/platform/ppc.h>
>>  .PP
>>  .BI "uint64_t __ppc_get_timebase(void)"
>> -.PP
>>  .BI "uint64_t __ppc_get_timebase_freq(void);"
>> +.fi
>>  .SH DESCRIPTION
>>  .BR __ppc_get_timebase ()
>>  reads the current value of the Time Base Register and returns its
>> diff --git a/man3/basename.3 b/man3/basename.3
>> index 74a2fb5b2..0dc0d6c2b 100644
>> --- a/man3/basename.3
>> +++ b/man3/basename.3
>> @@ -32,7 +32,6 @@ basename, dirname \- parse pathname components
>>  .B #include <libgen.h>
>>  .PP
>>  .BI "char *dirname(char *" path );
>> -.PP
>>  .BI "char *basename(char *" path );
>>  .fi
>>  .SH DESCRIPTION
>> diff --git a/man3/dladdr.3 b/man3/dladdr.3
>> index 8d476470a..15a61e6e1 100644
>> --- a/man3/dladdr.3
>> +++ b/man3/dladdr.3
>> @@ -32,7 +32,6 @@ dladdr, dladdr1 \- translate address to symbolic information
>>  .B #include <dlfcn.h>
>>  .PP
>>  .BI "int dladdr(void *" addr ", Dl_info *" info );
>> -.PP
>>  .BI "int dladdr1(void *" addr ", Dl_info *" info ", void **" \
>>          extra_info ", int " flags );
>>  .PP
>> diff --git a/man3/dlopen.3 b/man3/dlopen.3
>> index a64dcbcc2..22b50c420 100644
>> --- a/man3/dlopen.3
>> +++ b/man3/dlopen.3
>> @@ -37,10 +37,10 @@
>>  dlclose, dlopen, dlmopen \-
>>  open and close a shared object
>>  .SH SYNOPSIS
>> +.nf
>>  .B #include <dlfcn.h>
>>  .PP
>>  .BI "void *dlopen(const char *" filename ", int " flags );
>> -.PP
>>  .BI "int dlclose(void *" handle );
>>  .PP
>>  .B #define _GNU_SOURCE
>> @@ -48,6 +48,7 @@ open and close a shared object
>>  .B #include <dlfcn.h>
>>  .PP
>>  .BI "void *dlmopen(Lmid_t " lmid ", const char *" filename ", int " flags );
>> +.fi
>>  .PP
>>  Link with \fI\-ldl\fP.
>>  .SH DESCRIPTION
>> diff --git a/man3/ecvt.3 b/man3/ecvt.3
>> index fadddf8d8..9b2d2055d 100644
>> --- a/man3/ecvt.3
>> +++ b/man3/ecvt.3
>> @@ -33,13 +33,12 @@
>>  .SH NAME
>>  ecvt, fcvt \- convert a floating-point number to a string
>>  .SH SYNOPSIS
>> +.nf
>>  .B #include <stdlib.h>
>>  .PP
>> -.BI "char *ecvt(double " number ", int " ndigits ", int *" decpt ,
>> -.BI "int *" sign );
>> -.PP
>> -.BI "char *fcvt(double " number ", int " ndigits ", int *" decpt ,
>> -.BI "int *" sign );
>> +.BI "char *ecvt(double " number ", int " ndigits ", int *" decpt ", int *" sign );
>> +.BI "char *fcvt(double " number ", int " ndigits ", int *" decpt ", int *" sign );
>> +.fi
>>  .PP
>>  .RS -4
>>  Feature Test Macro Requirements for glibc (see
>> diff --git a/man3/ecvt_r.3 b/man3/ecvt_r.3
>> index 55c97e0bc..7ad8d6513 100644
>> --- a/man3/ecvt_r.3
>> +++ b/man3/ecvt_r.3
>> @@ -36,13 +36,11 @@ ecvt_r, fcvt_r, qecvt_r, qfcvt_r \- convert a floating-point number to a string
>>  .PP
>>  .BI "int ecvt_r(double " number ", int " ndigits ", int *" decpt ,
>>  .BI "           int *" sign ", char *" buf ", size_t " len );
>> -.PP
>>  .BI "int fcvt_r(double " number ", int " ndigits ", int *" decpt ,
>>  .BI "           int *" sign ", char *" buf ", size_t " len );
>>  .PP
>>  .BI "int qecvt_r(long double " number ", int " ndigits ", int *" decpt ,
>>  .BI "           int *" sign ", char *" buf ", size_t " len );
>> -.PP
>>  .BI "int qfcvt_r(long double " number ", int " ndigits ", int *" decpt ,
>>  .BI "           int *" sign ", char *" buf ", size_t " len );
>>  .fi
>> diff --git a/man3/err.3 b/man3/err.3
>> index 7a5056a1e..cf21dabfb 100644
>> --- a/man3/err.3
>> +++ b/man3/err.3
>> @@ -44,21 +44,17 @@ err, verr, errx, verrx, warn, vwarn, warnx, vwarnx \- formatted error messages
>>  .B #include <err.h>
>>  .PP
>>  .BI "void err(int " eval ", const char *" fmt ", ...);"
>> -.PP
>>  .BI "void errx(int " eval ", const char *" fmt ", ...);"
>>  .PP
>>  .BI "void warn(const char *" fmt ", ...);"
>> -.PP
>>  .BI "void warnx(const char *" fmt ", ...);"
>>  .PP
>>  .B #include <stdarg.h>
>>  .PP
>>  .BI "void verr(int " eval ", const char *" fmt ", va_list " args );
>> -.PP
>>  .BI "void verrx(int " eval ", const char *" fmt ", va_list " args );
>>  .PP
>>  .BI "void vwarn(const char *" fmt ", va_list " args );
>> -.PP
>>  .BI "void vwarnx(const char *" fmt ", va_list " args );
>>  .fi
>>  .SH DESCRIPTION
>> diff --git a/man3/ferror.3 b/man3/ferror.3
>> index c67498c7e..5c59fc97d 100644
>> --- a/man3/ferror.3
>> +++ b/man3/ferror.3
>> @@ -45,15 +45,14 @@
>>  .SH NAME
>>  clearerr, feof, ferror, fileno \- check and reset stream status
>>  .SH SYNOPSIS
>> +.nf
>>  .B #include <stdio.h>
>>  .PP
>>  .BI "void clearerr(FILE *" stream );
>> -.PP
>>  .BI "int feof(FILE *" stream );
>> -.PP
>>  .BI "int ferror(FILE *" stream );
>> -.PP
>>  .BI "int fileno(FILE *" stream );
>> +.fi
>>  .PP
>>  .RS -4
>>  Feature Test Macro Requirements for glibc (see
>> diff --git a/man3/ffs.3 b/man3/ffs.3
>> index 3304ad477..5c4162ec8 100644
>> --- a/man3/ffs.3
>> +++ b/man3/ffs.3
>> @@ -42,7 +42,6 @@ ffs, ffsl, ffsll \- find first bit set in a word
>>  .B #include <string.h>
>>  .PP
>>  .BI "int ffsl(long " i );
>> -.PP
>>  .BI "int ffsll(long long " i );
>>  .fi
>>  .PP
>> diff --git a/man3/fopen.3 b/man3/fopen.3
>> index 5dea20d0a..bbb4fbc39 100644
>> --- a/man3/fopen.3
>> +++ b/man3/fopen.3
>> @@ -49,9 +49,7 @@ fopen, fdopen, freopen \- stream open functions
>>  .B #include <stdio.h>
>>  .PP
>>  .BI "FILE *fopen(const char *" pathname ", const char *" mode );
>> -.PP
>>  .BI "FILE *fdopen(int " fd ", const char *" mode );
>> -.PP
>>  .BI "FILE *freopen(const char *" pathname ", const char *" mode ", FILE *" stream );
>>  .fi
>>  .PP
>> diff --git a/man3/fpclassify.3 b/man3/fpclassify.3
>> index 749f0ee32..83ebb75e6 100644
>> --- a/man3/fpclassify.3
>> +++ b/man3/fpclassify.3
>> @@ -16,13 +16,9 @@ classification macros
>>  .B #include <math.h>
>>  .PP
>>  .BI "int fpclassify(" x );
>> -.PP
>>  .BI "int isfinite(" x );
>> -.PP
>>  .BI "int isnormal(" x );
>> -.PP
>>  .BI "int isnan(" x );
>> -.PP
>>  .BI "int isinf(" x );
>>  .fi
>>  .PP
>> diff --git a/man3/fread.3 b/man3/fread.3
>> index 8e71e620e..41aa817e9 100644
>> --- a/man3/fread.3
>> +++ b/man3/fread.3
>> @@ -52,7 +52,6 @@ fread, fwrite \- binary stream input/output
>>  .PP
>>  .BI "size_t fread(void *" ptr ", size_t " size ", size_t " nmemb \
>>  ", FILE *" stream );
>> -.PP
>>  .BI "size_t fwrite(const void *" ptr ", size_t " size ", size_t " nmemb ,
>>  .BI "              FILE *" stream );
>>  .fi
>> diff --git a/man3/fseek.3 b/man3/fseek.3
>> index f040563fb..d51f7050f 100644
>> --- a/man3/fseek.3
>> +++ b/man3/fseek.3
>> @@ -46,13 +46,11 @@ fgetpos, fseek, fsetpos, ftell, rewind \- reposition a stream
>>  .B #include <stdio.h>
>>  .PP
>>  .BI "int fseek(FILE *" stream ", long " offset ", int " whence );
>> -.PP
>>  .BI "long ftell(FILE *" stream );
>>  .PP
>>  .BI "void rewind(FILE *" stream );
>>  .PP
>>  .BI "int fgetpos(FILE *" stream ", fpos_t *" pos );
>> -.PP
>>  .BI "int fsetpos(FILE *" stream ", const fpos_t *" pos );
>>  .SH DESCRIPTION
>>  The
>> diff --git a/man3/getcwd.3 b/man3/getcwd.3
>> index 9936b3b4f..c27c36aba 100644
>> --- a/man3/getcwd.3
>> +++ b/man3/getcwd.3
>> @@ -37,9 +37,7 @@ getcwd, getwd, get_current_dir_name \- get current working directory
>>  .B #include <unistd.h>
>>  .PP
>>  .BI "char *getcwd(char *" buf ", size_t " size );
>> -.PP
>>  .BI "char *getwd(char *" buf );
>> -.PP
>>  .B "char *get_current_dir_name(void);"
>>  .fi
>>  .PP
>> diff --git a/man3/getenv.3 b/man3/getenv.3
>> index 873196aa0..665278bdf 100644
>> --- a/man3/getenv.3
>> +++ b/man3/getenv.3
>> @@ -38,7 +38,6 @@ getenv, secure_getenv \- get an environment variable
>>  .B #include <stdlib.h>
>>  .PP
>>  .BI "char *getenv(const char *" name );
>> -.PP
>>  .BI "char *secure_getenv(const char *" name );
>>  .fi
>>  .PP
>> diff --git a/man3/gethostbyname.3 b/man3/gethostbyname.3
>> index 5d074a924..365f95e82 100644
>> --- a/man3/gethostbyname.3
>> +++ b/man3/gethostbyname.3
>> @@ -55,11 +55,9 @@ gethostent_r \- get network host entry
>>  .BI "                              socklen_t " len ", int " type );
>>  .PP
>>  .BI "void sethostent(int " stayopen );
>> -.PP
>>  .B void endhostent(void);
>>  .PP
>>  .BI "void herror(const char *" s );
>> -.PP
>>  .BI "const char *hstrerror(int " err );
>>  .PP
>>  /* System V/POSIX extension */
>> @@ -75,11 +73,9 @@ gethostent_r \- get network host entry
>>  .BI "int gethostbyaddr_r(const void *" addr ", socklen_t " len ", int " type ,
>>  .BI "        struct hostent *" ret ", char *" buf ", size_t " buflen ,
>>  .BI "        struct hostent **" result ", int *" h_errnop );
>> -.PP
>>  .BI "int gethostbyname_r(const char *" name ,
>>  .BI "        struct hostent *" ret ", char *" buf ", size_t " buflen ,
>>  .BI "        struct hostent **" result ", int *" h_errnop );
>> -.PP
>>  .BI "int gethostbyname2_r(const char *" name ", int " af,
>>  .BI "        struct hostent *" ret ", char *" buf ", size_t " buflen ,
>>  .BI "        struct hostent **" result ", int *" h_errnop );
>> diff --git a/man3/getifaddrs.3 b/man3/getifaddrs.3
>> index 7e235896c..7290139cd 100644
>> --- a/man3/getifaddrs.3
>> +++ b/man3/getifaddrs.3
>> @@ -42,7 +42,6 @@ getifaddrs, freeifaddrs \- get interface addresses
>>  .B #include <ifaddrs.h>
>>  .PP
>>  .BI "int getifaddrs(struct ifaddrs **" "ifap" );
>> -.PP
>>  .BI "void freeifaddrs(struct ifaddrs *" "ifa" );
>>  .fi
>>  .SH DESCRIPTION
>> diff --git a/man3/getipnodebyname.3 b/man3/getipnodebyname.3
>> index aa0f70a9c..12d3c2c86 100644
>> --- a/man3/getipnodebyname.3
>> +++ b/man3/getipnodebyname.3
>> @@ -35,10 +35,8 @@ hostnames and addresses
>>  .PP
>>  .BI "struct hostent *getipnodebyname(const char *" name ", int " af ,
>>  .BI "                                int " flags ", int *" error_num );
>> -.PP
>>  .BI "struct hostent *getipnodebyaddr(const void *" addr ", size_t " len ,
>>  .BI "                                int " af ", int *" "error_num" );
>> -.PP
>>  .BI "void freehostent(struct hostent *" "ip" );
>>  .fi
>>  .SH DESCRIPTION
>> diff --git a/man3/getnetent.3 b/man3/getnetent.3
>> index dffe95907..11c25c0db 100644
>> --- a/man3/getnetent.3
>> +++ b/man3/getnetent.3
>> @@ -38,11 +38,9 @@ get network entry
>>  .B struct netent *getnetent(void);
>>  .PP
>>  .BI "struct netent *getnetbyname(const char *" name );
>> -.PP
>>  .BI "struct netent *getnetbyaddr(uint32_t " net ", int " type );
>>  .PP
>>  .BI "void setnetent(int " stayopen );
>> -.PP
>>  .B void endnetent(void);
>>  .fi
>>  .SH DESCRIPTION
>> diff --git a/man3/getnetent_r.3 b/man3/getnetent_r.3
>> index 934089d59..dbbd2763e 100644
>> --- a/man3/getnetent_r.3
>> +++ b/man3/getnetent_r.3
>> @@ -34,12 +34,10 @@ network entry (reentrant)
>>  .BI "int getnetent_r(struct netent *" result_buf ", char *" buf ,
>>  .BI "                size_t " buflen ", struct netent **" result ,
>>  .BI "                int *" h_errnop );
>> -.PP
>>  .BI "int getnetbyname_r(const char *" name ,
>>  .BI "                struct netent *" result_buf ", char *" buf ,
>>  .BI "                size_t " buflen ", struct netent **" result ,
>>  .BI "                int *" h_errnop );
>> -.PP
>>  .BI "int getnetbyaddr_r(uint32_t " net ", int " type ,
>>  .BI "                struct netent *" result_buf ", char *" buf ,
>>  .BI "                size_t " buflen ", struct netent **" result ,
>> diff --git a/man3/getopt.3 b/man3/getopt.3
>> index 16f442ad8..e25c4219a 100644
>> --- a/man3/getopt.3
>> +++ b/man3/getopt.3
>> @@ -58,7 +58,6 @@ optarg, optind, opterr, optopt \- Parse command-line options
>>  .BI "int getopt_long(int " argc ", char * const " argv[] ,
>>  .BI "           const char *" optstring ,
>>  .BI "           const struct option *" longopts ", int *" longindex );
>> -.PP
>>  .BI "int getopt_long_only(int " argc ", char * const " argv[] ,
>>  .BI "           const char *" optstring ,
>>  .BI "           const struct option *" longopts ", int *" longindex );
>> diff --git a/man3/getprotoent.3 b/man3/getprotoent.3
>> index ee8c26cb3..c2ee5a235 100644
>> --- a/man3/getprotoent.3
>> +++ b/man3/getprotoent.3
>> @@ -38,11 +38,9 @@ endprotoent \- get protocol entry
>>  .B struct protoent *getprotoent(void);
>>  .PP
>>  .BI "struct protoent *getprotobyname(const char *" name );
>> -.PP
>>  .BI "struct protoent *getprotobynumber(int " proto );
>>  .PP
>>  .BI "void setprotoent(int " stayopen );
>> -.PP
>>  .B void endprotoent(void);
>>  .fi
>>  .SH DESCRIPTION
>> diff --git a/man3/getprotoent_r.3 b/man3/getprotoent_r.3
>> index c98764a4e..5ff17e637 100644
>> --- a/man3/getprotoent_r.3
>> +++ b/man3/getprotoent_r.3
>> @@ -33,11 +33,9 @@ protocol entry (reentrant)
>>  .PP
>>  .BI "int getprotoent_r(struct protoent *" result_buf ", char *" buf ,
>>  .BI "                size_t " buflen ", struct protoent **" result );
>> -.PP
>>  .BI "int getprotobyname_r(const char *" name ,
>>  .BI "                struct protoent *" result_buf ", char *" buf ,
>>  .BI "                size_t " buflen ", struct protoent **" result );
>> -.PP
>>  .BI "int getprotobynumber_r(int " proto ,
>>  .BI "                struct protoent *" result_buf ", char *" buf ,
>>  .BI "                size_t " buflen ", struct protoent **" result );
>> diff --git a/man3/getpwent.3 b/man3/getpwent.3
>> index 72fd5c62e..8164fcebc 100644
>> --- a/man3/getpwent.3
>> +++ b/man3/getpwent.3
>> @@ -39,9 +39,7 @@ getpwent, setpwent, endpwent \- get password file entry
>>  .B #include <pwd.h>
>>  .PP
>>  .B struct passwd *getpwent(void);
>> -.PP
>>  .B void setpwent(void);
>> -.PP
>>  .B void endpwent(void);
>>  .fi
>>  .PP
>> diff --git a/man3/getpwent_r.3 b/man3/getpwent_r.3
>> index 261552dec..81426776a 100644
>> --- a/man3/getpwent_r.3
>> +++ b/man3/getpwent_r.3
>> @@ -30,7 +30,6 @@ getpwent_r, fgetpwent_r \- get passwd file entry reentrantly
>>  .PP
>>  .BI "int getpwent_r(struct passwd *" pwbuf ", char *" buf ,
>>  .BI "               size_t " buflen ", struct passwd **" pwbufp );
>> -.PP
>>  .BI "int fgetpwent_r(FILE *" stream ", struct passwd *" pwbuf ", char *" buf ,
>>  .BI "                size_t " buflen ", struct passwd **" pwbufp );
>>  .fi
>> diff --git a/man3/getpwnam.3 b/man3/getpwnam.3
>> index 50810e6a9..5e41fdf08 100644
>> --- a/man3/getpwnam.3
>> +++ b/man3/getpwnam.3
>> @@ -43,12 +43,10 @@ getpwnam, getpwnam_r, getpwuid, getpwuid_r \- get password file entry
>>  .B #include <pwd.h>
>>  .PP
>>  .BI "struct passwd *getpwnam(const char *" name );
>> -.PP
>>  .BI "struct passwd *getpwuid(uid_t " uid );
>>  .PP
>>  .BI "int getpwnam_r(const char *" name ", struct passwd *" pwd ,
>>  .BI "               char *" buf ", size_t " buflen ", struct passwd **" result );
>> -.PP
>>  .BI "int getpwuid_r(uid_t " uid ", struct passwd *" pwd ,
>>  .BI "               char *" buf ", size_t " buflen ", struct passwd **" result );
>>  .fi
>> diff --git a/man3/getrpcent.3 b/man3/getrpcent.3
>> index e6b44e7c7..46b2bddd4 100644
>> --- a/man3/getrpcent.3
>> +++ b/man3/getrpcent.3
>> @@ -16,11 +16,9 @@ RPC entry
>>  .BI "struct rpcent *getrpcent(void);"
>>  .PP
>>  .BI "struct rpcent *getrpcbyname(const char *" name );
>> -.PP
>>  .BI "struct rpcent *getrpcbynumber(int " number );
>>  .PP
>>  .BI "void setrpcent(int " stayopen );
>> -.PP
>>  .BI "void endrpcent(void);"
>>  .fi
>>  .SH DESCRIPTION
>> diff --git a/man3/getrpcent_r.3 b/man3/getrpcent_r.3
>> index acefea479..d097b1338 100644
>> --- a/man3/getrpcent_r.3
>> +++ b/man3/getrpcent_r.3
>> @@ -33,11 +33,9 @@ RPC entry (reentrant)
>>  .PP
>>  .BI "int getrpcent_r(struct rpcent *" result_buf ", char *" buf ,
>>  .BI "                size_t " buflen ", struct rpcent **" result );
>> -.PP
>>  .BI "int getrpcbyname_r(const char *" name ,
>>  .BI "                struct rpcent *" result_buf ", char *" buf ,
>>  .BI "                size_t " buflen ", struct rpcent **" result );
>> -.PP
>>  .BI "int getrpcbynumber_r(int " number ,
>>  .BI "                struct rpcent *" result_buf ", char *" buf ,
>>  .BI "                size_t " buflen ", struct rpcent **" result );
>> diff --git a/man3/getservent.3 b/man3/getservent.3
>> index 8bfade77e..702d7c38f 100644
>> --- a/man3/getservent.3
>> +++ b/man3/getservent.3
>> @@ -42,11 +42,9 @@ get service entry
>>  .B struct servent *getservent(void);
>>  .PP
>>  .BI "struct servent *getservbyname(const char *" name ", const char *" proto );
>> -.PP
>>  .BI "struct servent *getservbyport(int " port ", const char *" proto );
>>  .PP
>>  .BI "void setservent(int " stayopen );
>> -.PP
>>  .B void endservent(void);
>>  .fi
>>  .SH DESCRIPTION
>> diff --git a/man3/getservent_r.3 b/man3/getservent_r.3
>> index f0c84e6a2..8e0b50814 100644
>> --- a/man3/getservent_r.3
>> +++ b/man3/getservent_r.3
>> @@ -33,11 +33,9 @@ service entry (reentrant)
>>  .PP
>>  .BI "int getservent_r(struct servent *" result_buf ", char *" buf ,
>>  .BI "                size_t " buflen ", struct servent **" result );
>> -.PP
>>  .BI "int getservbyname_r(const char *" name ", const char *" proto ,
>>  .BI "                struct servent *" result_buf ", char *" buf ,
>>  .BI "                size_t " buflen ", struct servent **" result );
>> -.PP
>>  .BI "int getservbyport_r(int " port ", const char *" proto ,
>>  .BI "                struct servent *" result_buf ", char *" buf ,
>>  .BI "                size_t " buflen ", struct servent **" result );
>> diff --git a/man3/getttyent.3 b/man3/getttyent.3
>> index a6c6e56ba..bec623b5c 100644
>> --- a/man3/getttyent.3
>> +++ b/man3/getttyent.3
>> @@ -11,11 +11,9 @@ getttyent, getttynam, setttyent, endttyent \- get ttys file entry
>>  .B "#include <ttyent.h>"
>>  .PP
>>  .B "struct ttyent *getttyent(void);"
>> -.PP
>>  .BI "struct ttyent *getttynam(const char *" name );
>>  .PP
>>  .B "int setttyent(void);"
>> -.PP
>>  .B "int endttyent(void);"
>>  .SH DESCRIPTION
>>  These functions provide an interface to the file
>> diff --git a/man3/getusershell.3 b/man3/getusershell.3
>> index ebdfac1d6..b790cb1e6 100644
>> --- a/man3/getusershell.3
>> +++ b/man3/getusershell.3
>> @@ -35,9 +35,7 @@ getusershell, setusershell, endusershell \- get permitted user shells
>>  .B #include <unistd.h>
>>  .PP
>>  .B char *getusershell(void);
>> -.PP
>>  .B void setusershell(void);
>> -.PP
>>  .B void endusershell(void);
>>  .fi
>>  .PP
>> diff --git a/man3/getw.3 b/man3/getw.3
>> index 00c5a79c6..2b5baec7b 100644
>> --- a/man3/getw.3
>> +++ b/man3/getw.3
>> @@ -30,7 +30,6 @@ getw, putw \- input and output of words (ints)
>>  .B #include <stdio.h>
>>  .PP
>>  .BI "int getw(FILE *" stream );
>> -.PP
>>  .BI "int putw(int " w ", FILE *" stream );
>>  .fi
>>  .PP
>> diff --git a/man3/index.3 b/man3/index.3
>> index 703278615..ec1037743 100644
>> --- a/man3/index.3
>> +++ b/man3/index.3
>> @@ -36,7 +36,6 @@ index, rindex \- locate character in string
>>  .B #include <strings.h>
>>  .PP
>>  .BI "char *index(const char *" s ", int " c );
>> -.PP
>>  .BI "char *rindex(const char *" s ", int " c );
>>  .fi
>>  .SH DESCRIPTION
>> diff --git a/man3/inet_net_pton.3 b/man3/inet_net_pton.3
>> index 9dbdeecb9..60d7bae36 100644
>> --- a/man3/inet_net_pton.3
>> +++ b/man3/inet_net_pton.3
>> @@ -31,7 +31,6 @@ inet_net_pton, inet_net_ntop \- Internet network number conversion
>>  .PP
>>  .BI "int inet_net_pton(int " af ", const char *" pres ,
>>  .BI "                  void *" netp ", size_t " nsize );
>> -.PP
>>  .BI "char *inet_net_ntop(int " af ", const void *" netp ", int " bits ,
>>  .BI "                    char *" pres ", size_t " psize );
>>  .fi
>> diff --git a/man3/lsearch.3 b/man3/lsearch.3
>> index b4fdb6208..526dc5aa1 100644
>> --- a/man3/lsearch.3
>> +++ b/man3/lsearch.3
>> @@ -32,7 +32,6 @@ lfind, lsearch \- linear search of an array
>>  .PP
>>  .BI "void *lfind(const void *" key ", const void *" base ", size_t *" nmemb ,
>>  .BI "         size_t " size ", int(*" compar ")(const void *, const void *));"
>> -.PP
>>  .BI "void *lsearch(const void *" key ", void *" base ", size_t *" nmemb ,
>>  .BI "         size_t " size ", int(*" compar ")(const void *, const void *));"
>>  .fi
>> diff --git a/man3/nl_langinfo.3 b/man3/nl_langinfo.3
>> index 8f8b96b15..6b22ab4ec 100644
>> --- a/man3/nl_langinfo.3
>> +++ b/man3/nl_langinfo.3
>> @@ -23,7 +23,6 @@ nl_langinfo, nl_langinfo_l \- query language and locale information
>>  .B #include <langinfo.h>
>>  .PP
>>  .BI "char *nl_langinfo(nl_item " item );
>> -.PP
>>  .BI "char *nl_langinfo_l(nl_item " item ", locale_t " locale );
>>  .fi
>>  .PP
>> diff --git a/man3/ntp_gettime.3 b/man3/ntp_gettime.3
>> index 15a2a3c7c..c7f2976ce 100644
>> --- a/man3/ntp_gettime.3
>> +++ b/man3/ntp_gettime.3
>> @@ -30,7 +30,6 @@ ntp_gettime, ntp_gettimex  \- get time parameters (NTP daemon interface)
>>  .B #include <sys/timex.h>
>>  .PP
>>  .BI "int ntp_gettime(struct ntptimeval *" ntv );
>> -.PP
>>  .BI "int ntp_gettimex(struct ntptimeval *" ntv );
>>  .fi
>>  .SH DESCRIPTION
>> diff --git a/man3/openpty.3 b/man3/openpty.3
>> index ff37d50a9..1732b7e2a 100644
>> --- a/man3/openpty.3
>> +++ b/man3/openpty.3
>> @@ -41,7 +41,6 @@ openpty, login_tty, forkpty \- terminal utility functions
>>  .BI "int openpty(int *" amaster ", int *" aslave ", char *" name ,
>>  .BI "            const struct termios *" termp ,
>>  .BI "            const struct winsize *" winp );
>> -.PP
>>  .BI "pid_t forkpty(int *" amaster ", char *" name ,
>>  .BI "              const struct termios *" termp ,
>>  .BI "              const struct winsize *" winp );
>> diff --git a/man3/popen.3 b/man3/popen.3
>> index b02226359..5e666c110 100644
>> --- a/man3/popen.3
>> +++ b/man3/popen.3
>> @@ -45,7 +45,6 @@ popen, pclose \- pipe stream to or from a process
>>  .B #include <stdio.h>
>>  .PP
>>  .BI "FILE *popen(const char *" command ", const char *" type );
>> -.PP
>>  .BI "int pclose(FILE *" stream );
>>  .fi
>>  .PP
>> diff --git a/man3/posix_spawn.3 b/man3/posix_spawn.3
>> index 34ad094ea..2c464e87b 100644
>> --- a/man3/posix_spawn.3
>> +++ b/man3/posix_spawn.3
>> @@ -39,7 +39,6 @@ posix_spawn, posix_spawnp \- spawn a process
>>  .BI "                const posix_spawn_file_actions_t *" file_actions ,
>>  .BI "                const posix_spawnattr_t *" attrp ,
>>  .BI "                char *const " argv[] ", char *const " envp[] );
>> -.PP
>>  .BI "int posix_spawnp(pid_t *" pid ", const char *" file ,
>>  .BI "                 const posix_spawn_file_actions_t *" file_actions ,
>>  .BI "                 const posix_spawnattr_t *" attrp ,
>> diff --git a/man3/qecvt.3 b/man3/qecvt.3
>> index 0d4b8af3b..ad78c5485 100644
>> --- a/man3/qecvt.3
>> +++ b/man3/qecvt.3
>> @@ -29,15 +29,13 @@
>>  .SH NAME
>>  qecvt, qfcvt, qgcvt \- convert a floating-point number to a string
>>  .SH SYNOPSIS
>> +.nf
>>  .B #include <stdlib.h>
>>  .PP
>> -.BI "char *qecvt(long double " number ", int " ndigits ", int *" decpt ,
>> -.BI "int *" sign );
>> -.PP
>> -.BI "char *qfcvt(long double " number ", int " ndigits ", int *" decpt ,
>> -.BI "int *" sign );
>> -.PP
>> +.BI "char *qecvt(long double " number ", int " ndigits ", int *" decpt ", int *" sign );
>> +.BI "char *qfcvt(long double " number ", int " ndigits ", int *" decpt ",i int *" sign );
>>  .BI "char *qgcvt(long double " number ", int " ndigit ", char *" buf );
>> +.fi
>>  .PP
>>  .RS -4
>>  Feature Test Macro Requirements for glibc (see
>> diff --git a/man3/qsort.3 b/man3/qsort.3
>> index b0d9c43ef..048356c30 100644
>> --- a/man3/qsort.3
>> +++ b/man3/qsort.3
>> @@ -43,7 +43,6 @@ qsort, qsort_r \- sort an array
>>  .PP
>>  .BI "void qsort(void *" base ", size_t " nmemb ", size_t " size ,
>>  .BI "           int (*" compar ")(const void *, const void *));"
>> -.PP
>>  .BI "void qsort_r(void *" base ", size_t " nmemb ", size_t " size ,
>>  .BI "           int (*" compar ")(const void *, const void *, void *),"
>>  .BI "           void *" arg ");"
>> diff --git a/man3/rcmd.3 b/man3/rcmd.3
>> index d80c10324..c1fb9fbf4 100644
>> --- a/man3/rcmd.3
>> +++ b/man3/rcmd.3
>> @@ -56,7 +56,6 @@ stream to a remote command
>>  .PP
>>  .BI "int iruserok(uint32_t " raddr ", int " superuser ,
>>  .BI "             const char *" ruser ", const char *" luser );
>> -.PP
>>  .BI "int ruserok(const char *" rhost ", int " superuser ,
>>  .BI "            const char *" ruser ", const char *" luser );
>>  .PP
>> @@ -69,7 +68,6 @@ stream to a remote command
>>  .BI "int iruserok_af(const void *" raddr ", int " superuser ,
>>  .BI "                const char *" ruser ", const char *" luser \
>>  ", sa_family_t " af );
>> -.PP
>>  .BI "int ruserok_af(const char *" rhost ", int " superuser ,
>>  .BI "               const char *" ruser ", const char *" luser \
>>  ", sa_family_t " af );
>>
>>
>>

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
