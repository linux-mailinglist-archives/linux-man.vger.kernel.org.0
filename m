Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A260170A2DC
	for <lists+linux-man@lfdr.de>; Sat, 20 May 2023 00:42:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229485AbjESWmJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 May 2023 18:42:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229557AbjESWmJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 May 2023 18:42:09 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0526DD7
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 15:42:07 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-3f50020e0f8so9137405e9.0
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 15:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684536125; x=1687128125;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=erMAHDxzmJVsElpNHwXYWBwupR67LIZ8L8DEHk9y0uM=;
        b=rNQiL3mW64OqixDmFsqSi48IpwcR/coExGA4w8wI6nWSi4BxrjEPt73xPGFCc/Cg2r
         t0yVCJWfz5S1OSbFZtSrQxWUC9yKBVfOJua7+HSPsAtFlG8ev+xV0zFyE4ThYoOsE0rz
         gY8hEa1paMvcSgSrfdiDTK+VWSFvHScRBxECZkuVnU8/9R+ytNTMZ1CDXTaHCt6UwLBZ
         sfgz6kh/UnIt9fL9VGb7trujSGN3FspvxH3biLjp+SEFA6jHKEQiaiLQ+UeodiSojill
         UkWEJpdTS7gQq7aubRkxkydhZgYdt6SNcYj6m+nHgJxphpgtDQiqyaU+lVW5hhETSZv3
         TOaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684536125; x=1687128125;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=erMAHDxzmJVsElpNHwXYWBwupR67LIZ8L8DEHk9y0uM=;
        b=H5RfK2GMWqbUOs0GXCw0zayQUCPYG6vUArOUXnjd6OCDJImiA6WsERi10jjRqNu4IK
         Sb9wrDr3LjA69SkBBbTA/HPSv3WwYuLQp5o23G43ggtLOnm4+aqqBz+8Nz11A633gP3A
         EK2UqrOLxvjc2BotJunH1iQwFjRYOHUds0Lgq7b3eUPls9mbLwxnYudlMLW+xNyXmLnb
         Q4fEDvYKo2mSSDCZhpr8TgPuf0s++ktcJkAw8BpOwxPemB225RJtVTNtI6P0Bpxtvd+S
         ODZ7mxSmf75jktcN1ypo1Fm8VORmlLuQS43/Oymu24wVS13Azr4D6MTGDsVYDWf++da+
         jlvw==
X-Gm-Message-State: AC+VfDxk/whAELzg5Y4LeB8+Ca0N9G5TDuPpI2U3OJGVVFdQQBN00WVe
        HkmkvA44Vm7Fi5rIXg+K4Fg=
X-Google-Smtp-Source: ACHHUZ6ujc1KH6y9rx6g8w/etdkRC3rDO9STRbYX2kVS9knHkY88wIcf2KAoz8arqiEIn0EpHHZk8Q==
X-Received: by 2002:a05:600c:3d8d:b0:3f4:9a86:f2ab with SMTP id bi13-20020a05600c3d8d00b003f49a86f2abmr2512562wmb.17.1684536125227;
        Fri, 19 May 2023 15:42:05 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id n21-20020a7bc5d5000000b003f42a75ac2asm420828wmk.23.2023.05.19.15.42.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 May 2023 15:42:04 -0700 (PDT)
Message-ID: <41ea7196-c824-196d-7794-0f61d0947bcd@gmail.com>
Date:   Sat, 20 May 2023 00:41:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] Fix the man page
Content-Language: en-US
To:     enh <enh@google.com>, Zijun Zhao <zijunzhao@google.com>
Cc:     alx@kernel.org, linux-man@vger.kernel.org
References: <CAELULbeXgZWn+Nw_rpUzkGgNCtb7oFf1+JS=KnNVuLhcF5Vabg@mail.gmail.com>
 <CAELULbf=z2WWpHm5QDTK81oWTC9zMZJg2MA69mjOorJQ5QAzGw@mail.gmail.com>
 <CAJgzZopuptYOKHQ32-mau9gzwaWOmRtTACqdmfZvox=c2itp7w@mail.gmail.com>
 <781c88a1-b71f-f600-8d75-068a65855d16@gmail.com>
 <CAJgzZooLH5UnNU_j6jTkTFMCS+7gDMaTu9RYpSHnO2ELJat-+A@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAJgzZooLH5UnNU_j6jTkTFMCS+7gDMaTu9RYpSHnO2ELJat-+A@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------j03gtfep2DPjH100oR858IQD"
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------j03gtfep2DPjH100oR858IQD
Content-Type: multipart/mixed; boundary="------------0FBXicD6MOWNC0ya0vevTGIE";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: enh <enh@google.com>, Zijun Zhao <zijunzhao@google.com>
Cc: alx@kernel.org, linux-man@vger.kernel.org
Message-ID: <41ea7196-c824-196d-7794-0f61d0947bcd@gmail.com>
Subject: Re: [PATCH] Fix the man page
References: <CAELULbeXgZWn+Nw_rpUzkGgNCtb7oFf1+JS=KnNVuLhcF5Vabg@mail.gmail.com>
 <CAELULbf=z2WWpHm5QDTK81oWTC9zMZJg2MA69mjOorJQ5QAzGw@mail.gmail.com>
 <CAJgzZopuptYOKHQ32-mau9gzwaWOmRtTACqdmfZvox=c2itp7w@mail.gmail.com>
 <781c88a1-b71f-f600-8d75-068a65855d16@gmail.com>
 <CAJgzZooLH5UnNU_j6jTkTFMCS+7gDMaTu9RYpSHnO2ELJat-+A@mail.gmail.com>
In-Reply-To: <CAJgzZooLH5UnNU_j6jTkTFMCS+7gDMaTu9RYpSHnO2ELJat-+A@mail.gmail.com>

--------------0FBXicD6MOWNC0ya0vevTGIE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 5/20/23 00:21, enh wrote:
> On Fri, May 19, 2023 at 1:03=E2=80=AFAM Alejandro Colomar
> <alx.manpages@gmail.com> wrote:
[...]

>> You'll also need to add _Nullable to the function prototypes in the
>> SYNOPSIS.
>=20
> heh, funnily enough, zijunzhao's adding exactly those annotations to
> the bionic headers, which is how we stumbled across this.

:)

>=20
>> BTW, I see that glibc still requires nonnull in gettimeofday(3).  It's=

>> only settimeofday(3) that is nullable.
>=20
> yeah, but the _kernel_ allows null in both (see kernel/time/time.c),
> and this is section 2 of the man page. it's unclear to me whether
> that's worth calling out up here, or should be down in the
> Linux-specific section? (this page seems to be written as if it cares
> about Hurd? "On a non-Linux kernel, with glibc ...".)

Yes, we care about hurd, and non-g libc, in this page and others.
Normally, I would be cautious, and specify the strictest prototype of
all implementations about which I care, but in this case, glibc seems
unnecessarily restrictive, and I'm ready to add _Nullable if the kernel
and some libc support that.  However, as a caution, please add a
(CAVEATS?) section documenting that glibc doesn't allow NULL there.
Or maybe keep the SYNOPSIS without _Nullable, and have some VERSIONS
section specifying that other libcs and the kernel support NULL.

>=20
>> See:
>>
>>
>> $ grepc gettimeofday /usr/include/*/sys/time.h
>> /usr/include/x86_64-linux-gnu/sys/time.h:67:
>> extern int gettimeofday (struct timeval *__restrict __tv,
>>                          void *__restrict __tz) __THROW __nonnull ((1)=
);
>>
>>
>> /usr/include/x86_64-linux-gnu/sys/time.h:75:
>> #  define gettimeofday __gettimeofday64
>>
>>
>> $ grepc settimeofday /usr/include/*/sys/time.h
>> /usr/include/x86_64-linux-gnu/sys/time.h:86:
>> extern int settimeofday (const struct timeval *__tv,
>>                          const struct timezone *__tz)
>>       __THROW;
>>
>>
>> /usr/include/x86_64-linux-gnu/sys/time.h:106:
>> #   define settimeofday __settimeofday64
>>
>>
>> And while NULL may be non-UB, the manual page is not very clear on why=

>> someone would want to call these functions with NULL.  Could you
>> please also explain why would someone want to call these functions
>> with NULL?  (Let's discuss it in the list, and then we see what
>> wording we use for the page.)
>=20
> so there are definitely several orders of magnitude more users of a
> null timezone --- most callers don't want that (not least because
> glibc seems to not fill it out anyway? musl certainly doesn't,
> implementing gettimeofday() in terms of clock_gettime() instead).
>=20
> the users for a null time (and non-null timezone; i haven't seen
> anyone -- not even a test -- pass null for both!) are interesting.
> Android's init uses settimeofday() with only a timezone, but --
> although the timezone to use is settable in device-specific init
> scripts -- for devices in our tree, that's actually always 0. there's
> other proprietary (non-Google) code that uses gettimeofday() with only
> a timezone, and i'm honestly not sure whether it's deliberate that
> it's asking the _kernel_ for the timezone or not (i'm guessing they
> want the device timezone rather than the app timezone, but i do not
> believe there are devices where the _kernel_ timezone matches the
> device timezone?). certainly both of these use cases seem worth
> following up on, and i will do.

Please.  And thanks for the details!

>=20
> but looking at musl (which ignores tz in both cases) it seems like the
> most impactful change would be to fix "The functions gettimeofday()
> and settimeofday() can get and set the time as well as a timezone" :-)

:-)

Makes sense; although it would be worth being clear about if that's
really true, and if libcs do support that as well as the kernel.

>=20
> it also seems like an improvement to really call out the libc/kernel
> differences more clearly though.

Sure.  Many pages have a dedicated subsection.  Feel free to add it
to this page.  I'd put it in .SH VERSIONS.

$ grep -rn 'C library/kernel differences' man*
man2/sigprocmask.2:120:.SS C library/kernel differences
man2/setreuid.2:168:.SS C library/kernel differences
man2/brk.2:126:.SS C library/kernel differences
man2/sigwaitinfo.2:114:.SS C library/kernel differences
man2/gethostname.2:122:.SS C library/kernel differences
man2/getcpu.2:73:.SS C library/kernel differences
man2/fork.2:263:.SS C library/kernel differences
man2/epoll_wait.2:258:.SS C library/kernel differences
man2/wait4.2:157:.SS C library/kernel differences
man2/stat.2:355:.SS C library/kernel differences
man2/sigsuspend.2:74:.SS C library/kernel differences
man2/access.2:40:                /* But see C library/kernel differences,=
 below */
man2/access.2:285:.SS C library/kernel differences
man2/clock_getres.2:354:.SS C library/kernel differences
man2/getpid.2:57:.SS C library/kernel differences
man2/setfsgid.2:57:.SS C library/kernel differences
man2/getgroups.2:142:.SS C library/kernel differences
man2/sigaction.2:946:.SS C library/kernel differences
man2/setresuid.2:100:.SS C library/kernel differences
man2/readv.2:290:.SS C library/kernel differences
man2/readv.2:342:.SS Historical C library/kernel differences
man2/open.2:1393:.SS C library/kernel differences
man2/setgid.2:58:.SS C library/kernel differences
man2/setfsuid.2:97:.SS C library/kernel differences
man2/ptrace.2:2814:.SS C library/kernel differences
man2/poll.2:382:.SS C library/kernel differences
man2/sigreturn.2:130:.SS C library/kernel differences
man2/eventfd.2:267:.SS C library/kernel differences
man2/mmap.2:729:.SS C library/kernel differences
man2/_exit.2:104:.SS C library/kernel differences
man2/time.2:86:.SS C library/kernel differences
man2/pread.2:101:.SS C library/kernel differences
man2/seccomp.2:975:.IR "C library/kernel differences" .
man2/setuid.2:104:.SS C library/kernel differences
man2/sched_setaffinity.2:95:return 0 (but see "C library/kernel differenc=
es" below,
man2/sched_setaffinity.2:220:.SS C library/kernel differences
man2/select.2:559:.SS C library/kernel differences
man2/sigpending.2:52:.SS C library/kernel differences
man2/posix_fadvise.2:135:.SS C library/kernel differences
man2/gettimeofday.2:173:.SS C library/kernel differences
man2/uname.2:83:.SS C library/kernel differences
man2/clone.2:1576:.SS C library/kernel differences
man2/getpriority.2:185:.SS C library/kernel differences
man2/signalfd.2:331:.SS C library/kernel differences
man2/timer_create.2:225:.SS C library/kernel differences
man2/wait.2:464:.SS C library/kernel differences
man2/nice.2:80:.SS C library/kernel differences
man2/chmod.2:303:.SS C library/kernel differences
man2/seteuid.2:114:.SS C library/kernel differences
man3/getcwd.3:217:.SS C library/kernel differences
man3/killpg.3:98:.SS C library/kernel differences
man3/mq_notify.3:174:.SS C library/kernel differences
man3/mq_open.3:269:.SS C library/kernel differences
man3/sigqueue.3:118:.SS C library/kernel differences
man3type/epoll_event.3type:37:.SS C library/kernel differences
man7/man-pages.7:402:.I "C library/kernel differences"

Cheers,
Alex

>=20
>> Thanks!
>> Alex
>>
>> --
>> <http://www.alejandro-colomar.es/>
>> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>>

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------0FBXicD6MOWNC0ya0vevTGIE--

--------------j03gtfep2DPjH100oR858IQD
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRn+zUACgkQnowa+77/
2zKliw//f9K9suJF/lDTdtnp4wtzZtPnIMkZ6MF6keb0NLbgMquGHNlKIHjIg/Qx
OojOwyMa5i6pyCqgl+f9NkJ4/MWG4RnW+1B3TegxrNNCDAiCbFWE7yXDVoTnLUXC
FMP9Cun20fFsV7X6JPgZaWfXZU6oJLZLn0EpHc9TcjhxVretaI6Ww//AoSllYwt4
EwzfVXph3Lf4nsSAQImbdWsqdkEIJUfHpNQ7AxOEOpw97G8vza1JSXjB+mwPhPMs
D65X1bks5sUuIGmJChNTRm4sMNXNQCKEpJmLaiI1PqHWPjB5TvyAPMGYaYUEPvzE
4ZLDT6abAJ3WB7/JusdxaQDoidEexutwQYEOSQzYykhlBzSIoTVxiF9c36B4KYhU
pwVAiAn4l0FRwZKypW9SLpllnypzsEabDNafTSAs9knxqP76AJK/Ii+kpH/9ioKm
xur/3aaARquBcbhbkmDq4E4VJ+++JTQRjmec53PSyaRtZ9+iFg8BWtLboasWWiTu
MeZyyXH8+HdagBn0BxaAIDwVUpbDyKQ5zPPngdXNxaLawbXYlz9Qkn4cMDgQbpuF
dvESFxTedI3sp0+qmd7/6iU5w/SDo8t/CIfEu2cxmIKS8LokfcXpnmGXsDPoO8C8
hzQSSVoDD1pmX7/jeOZ5KuO6YKpG15w/BNq+B5lIGb03bxCsiAc=
=a459
-----END PGP SIGNATURE-----

--------------j03gtfep2DPjH100oR858IQD--
