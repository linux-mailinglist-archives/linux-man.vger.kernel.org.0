Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12219767726
	for <lists+linux-man@lfdr.de>; Fri, 28 Jul 2023 22:41:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229864AbjG1Ulf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 16:41:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229502AbjG1Ule (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 16:41:34 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A263423B
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 13:41:33 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9A856621FD
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 20:41:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3104BC433C7;
        Fri, 28 Jul 2023 20:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690576892;
        bh=A3JCzjTMEK852gK7NfZez6Nss3jLnVAmoUFAOHIPRjY=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=WTcjiy+9+n0QLx37sC0VV2U8zfHh1T+NlbCm4sv03VL69zd9iBF/UW+IBqcKI6oF+
         UukI4EysoAoWhElE4iYZ/mgxv3OcwiwCRx8R0Ws913RNFwWJHA2n8msWxSnvnnbNB3
         atPFJb0QK9nDNzFHHoZsc1jzNdsPxHWDITC7evDqnDvUP7pud1jaRfkiwSA1FU+ykv
         ryd+NaE3Z0HThgLSy1a64yAeUhq9EtE6QzDvMFakiX1XS5dIrI3WpWvvxCsUKM44kC
         ZUG8F8On6ZJMki4LM6RYt5OI132JLSe2UqaP059jDoEDmMPfRosn/xc4eMioLbl3Wb
         GFWHsT17yR7bw==
Message-ID: <a144620f-8708-ee72-41ba-ef7c5e5fe1bc@kernel.org>
Date:   Fri, 28 Jul 2023 22:41:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] Fix the man page
Content-Language: en-US
To:     Zijun Zhao <zijunzhao@google.com>
Cc:     enh <enh@google.com>, linux-man@vger.kernel.org
References: <CAELULbeXgZWn+Nw_rpUzkGgNCtb7oFf1+JS=KnNVuLhcF5Vabg@mail.gmail.com>
 <CAELULbf=z2WWpHm5QDTK81oWTC9zMZJg2MA69mjOorJQ5QAzGw@mail.gmail.com>
 <CAJgzZopuptYOKHQ32-mau9gzwaWOmRtTACqdmfZvox=c2itp7w@mail.gmail.com>
 <781c88a1-b71f-f600-8d75-068a65855d16@gmail.com>
 <CAJgzZooLH5UnNU_j6jTkTFMCS+7gDMaTu9RYpSHnO2ELJat-+A@mail.gmail.com>
 <41ea7196-c824-196d-7794-0f61d0947bcd@gmail.com>
 <CAELULbeirvj+Gmpi-+tq=SYu2wUXec-46-d2_EK++34L+C4qGQ@mail.gmail.com>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <CAELULbeirvj+Gmpi-+tq=SYu2wUXec-46-d2_EK++34L+C4qGQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------H4NFP0E663Yd3InzD9qD2ufT"
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------H4NFP0E663Yd3InzD9qD2ufT
Content-Type: multipart/mixed; boundary="------------fHBlyEGO0lkVscikGepEoFfD";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Zijun Zhao <zijunzhao@google.com>
Cc: enh <enh@google.com>, linux-man@vger.kernel.org
Message-ID: <a144620f-8708-ee72-41ba-ef7c5e5fe1bc@kernel.org>
Subject: Re: [PATCH] Fix the man page
References: <CAELULbeXgZWn+Nw_rpUzkGgNCtb7oFf1+JS=KnNVuLhcF5Vabg@mail.gmail.com>
 <CAELULbf=z2WWpHm5QDTK81oWTC9zMZJg2MA69mjOorJQ5QAzGw@mail.gmail.com>
 <CAJgzZopuptYOKHQ32-mau9gzwaWOmRtTACqdmfZvox=c2itp7w@mail.gmail.com>
 <781c88a1-b71f-f600-8d75-068a65855d16@gmail.com>
 <CAJgzZooLH5UnNU_j6jTkTFMCS+7gDMaTu9RYpSHnO2ELJat-+A@mail.gmail.com>
 <41ea7196-c824-196d-7794-0f61d0947bcd@gmail.com>
 <CAELULbeirvj+Gmpi-+tq=SYu2wUXec-46-d2_EK++34L+C4qGQ@mail.gmail.com>
In-Reply-To: <CAELULbeirvj+Gmpi-+tq=SYu2wUXec-46-d2_EK++34L+C4qGQ@mail.gmail.com>

--------------fHBlyEGO0lkVscikGepEoFfD
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Zijun,

On 2023-06-20 20:21, Zijun Zhao wrote:
> Hi Alejandro,
>   I already created the patch attached below. How to add it to this
> page? Do I need to use git push, or just provide the patch? Could you
> help put it in .SH VERSIONS? Thank you!
> Best,
> Zijun Zhao

I've applied the patch.

(You just need to provide the patch, as you did.  I apply and push it.)

Thanks!
Alex

>=20
> On Fri, May 19, 2023 at 3:42=E2=80=AFPM Alejandro Colomar
> <alx.manpages@gmail.com> wrote:
>>
>> On 5/20/23 00:21, enh wrote:
>>> On Fri, May 19, 2023 at 1:03=E2=80=AFAM Alejandro Colomar
>>> <alx.manpages@gmail.com> wrote:
>> [...]
>>
>>>> You'll also need to add _Nullable to the function prototypes in the
>>>> SYNOPSIS.
>>>
>>> heh, funnily enough, zijunzhao's adding exactly those annotations to
>>> the bionic headers, which is how we stumbled across this.
>>
>> :)
>>
>>>
>>>> BTW, I see that glibc still requires nonnull in gettimeofday(3).  It=
's
>>>> only settimeofday(3) that is nullable.
>>>
>>> yeah, but the _kernel_ allows null in both (see kernel/time/time.c),
>>> and this is section 2 of the man page. it's unclear to me whether
>>> that's worth calling out up here, or should be down in the
>>> Linux-specific section? (this page seems to be written as if it cares=

>>> about Hurd? "On a non-Linux kernel, with glibc ...".)
>>
>> Yes, we care about hurd, and non-g libc, in this page and others.
>> Normally, I would be cautious, and specify the strictest prototype of
>> all implementations about which I care, but in this case, glibc seems
>> unnecessarily restrictive, and I'm ready to add _Nullable if the kerne=
l
>> and some libc support that.  However, as a caution, please add a
>> (CAVEATS?) section documenting that glibc doesn't allow NULL there.
>> Or maybe keep the SYNOPSIS without _Nullable, and have some VERSIONS
>> section specifying that other libcs and the kernel support NULL.
>>
>>>
>>>> See:
>>>>
>>>>
>>>> $ grepc gettimeofday /usr/include/*/sys/time.h
>>>> /usr/include/x86_64-linux-gnu/sys/time.h:67:
>>>> extern int gettimeofday (struct timeval *__restrict __tv,
>>>>                          void *__restrict __tz) __THROW __nonnull ((=
1));
>>>>
>>>>
>>>> /usr/include/x86_64-linux-gnu/sys/time.h:75:
>>>> #  define gettimeofday __gettimeofday64
>>>>
>>>>
>>>> $ grepc settimeofday /usr/include/*/sys/time.h
>>>> /usr/include/x86_64-linux-gnu/sys/time.h:86:
>>>> extern int settimeofday (const struct timeval *__tv,
>>>>                          const struct timezone *__tz)
>>>>       __THROW;
>>>>
>>>>
>>>> /usr/include/x86_64-linux-gnu/sys/time.h:106:
>>>> #   define settimeofday __settimeofday64
>>>>
>>>>
>>>> And while NULL may be non-UB, the manual page is not very clear on w=
hy
>>>> someone would want to call these functions with NULL.  Could you
>>>> please also explain why would someone want to call these functions
>>>> with NULL?  (Let's discuss it in the list, and then we see what
>>>> wording we use for the page.)
>>>
>>> so there are definitely several orders of magnitude more users of a
>>> null timezone --- most callers don't want that (not least because
>>> glibc seems to not fill it out anyway? musl certainly doesn't,
>>> implementing gettimeofday() in terms of clock_gettime() instead).
>>>
>>> the users for a null time (and non-null timezone; i haven't seen
>>> anyone -- not even a test -- pass null for both!) are interesting.
>>> Android's init uses settimeofday() with only a timezone, but --
>>> although the timezone to use is settable in device-specific init
>>> scripts -- for devices in our tree, that's actually always 0. there's=

>>> other proprietary (non-Google) code that uses gettimeofday() with onl=
y
>>> a timezone, and i'm honestly not sure whether it's deliberate that
>>> it's asking the _kernel_ for the timezone or not (i'm guessing they
>>> want the device timezone rather than the app timezone, but i do not
>>> believe there are devices where the _kernel_ timezone matches the
>>> device timezone?). certainly both of these use cases seem worth
>>> following up on, and i will do.
>>
>> Please.  And thanks for the details!
>>
>>>
>>> but looking at musl (which ignores tz in both cases) it seems like th=
e
>>> most impactful change would be to fix "The functions gettimeofday()
>>> and settimeofday() can get and set the time as well as a timezone" :-=
)
>>
>> :-)
>>
>> Makes sense; although it would be worth being clear about if that's
>> really true, and if libcs do support that as well as the kernel.
>>
>>>
>>> it also seems like an improvement to really call out the libc/kernel
>>> differences more clearly though.
>>
>> Sure.  Many pages have a dedicated subsection.  Feel free to add it
>> to this page.  I'd put it in .SH VERSIONS.
>>
>> $ grep -rn 'C library/kernel differences' man*
>> man2/sigprocmask.2:120:.SS C library/kernel differences
>> man2/setreuid.2:168:.SS C library/kernel differences
>> man2/brk.2:126:.SS C library/kernel differences
>> man2/sigwaitinfo.2:114:.SS C library/kernel differences
>> man2/gethostname.2:122:.SS C library/kernel differences
>> man2/getcpu.2:73:.SS C library/kernel differences
>> man2/fork.2:263:.SS C library/kernel differences
>> man2/epoll_wait.2:258:.SS C library/kernel differences
>> man2/wait4.2:157:.SS C library/kernel differences
>> man2/stat.2:355:.SS C library/kernel differences
>> man2/sigsuspend.2:74:.SS C library/kernel differences
>> man2/access.2:40:                /* But see C library/kernel differenc=
es, below */
>> man2/access.2:285:.SS C library/kernel differences
>> man2/clock_getres.2:354:.SS C library/kernel differences
>> man2/getpid.2:57:.SS C library/kernel differences
>> man2/setfsgid.2:57:.SS C library/kernel differences
>> man2/getgroups.2:142:.SS C library/kernel differences
>> man2/sigaction.2:946:.SS C library/kernel differences
>> man2/setresuid.2:100:.SS C library/kernel differences
>> man2/readv.2:290:.SS C library/kernel differences
>> man2/readv.2:342:.SS Historical C library/kernel differences
>> man2/open.2:1393:.SS C library/kernel differences
>> man2/setgid.2:58:.SS C library/kernel differences
>> man2/setfsuid.2:97:.SS C library/kernel differences
>> man2/ptrace.2:2814:.SS C library/kernel differences
>> man2/poll.2:382:.SS C library/kernel differences
>> man2/sigreturn.2:130:.SS C library/kernel differences
>> man2/eventfd.2:267:.SS C library/kernel differences
>> man2/mmap.2:729:.SS C library/kernel differences
>> man2/_exit.2:104:.SS C library/kernel differences
>> man2/time.2:86:.SS C library/kernel differences
>> man2/pread.2:101:.SS C library/kernel differences
>> man2/seccomp.2:975:.IR "C library/kernel differences" .
>> man2/setuid.2:104:.SS C library/kernel differences
>> man2/sched_setaffinity.2:95:return 0 (but see "C library/kernel differ=
ences" below,
>> man2/sched_setaffinity.2:220:.SS C library/kernel differences
>> man2/select.2:559:.SS C library/kernel differences
>> man2/sigpending.2:52:.SS C library/kernel differences
>> man2/posix_fadvise.2:135:.SS C library/kernel differences
>> man2/gettimeofday.2:173:.SS C library/kernel differences
>> man2/uname.2:83:.SS C library/kernel differences
>> man2/clone.2:1576:.SS C library/kernel differences
>> man2/getpriority.2:185:.SS C library/kernel differences
>> man2/signalfd.2:331:.SS C library/kernel differences
>> man2/timer_create.2:225:.SS C library/kernel differences
>> man2/wait.2:464:.SS C library/kernel differences
>> man2/nice.2:80:.SS C library/kernel differences
>> man2/chmod.2:303:.SS C library/kernel differences
>> man2/seteuid.2:114:.SS C library/kernel differences
>> man3/getcwd.3:217:.SS C library/kernel differences
>> man3/killpg.3:98:.SS C library/kernel differences
>> man3/mq_notify.3:174:.SS C library/kernel differences
>> man3/mq_open.3:269:.SS C library/kernel differences
>> man3/sigqueue.3:118:.SS C library/kernel differences
>> man3type/epoll_event.3type:37:.SS C library/kernel differences
>> man7/man-pages.7:402:.I "C library/kernel differences"
>>
>> Cheers,
>> Alex
>>
>>>
>>>> Thanks!
>>>> Alex
>>>>
>>>> --
>>>> <http://www.alejandro-colomar.es/>
>>>> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>>>>
>>
>> --
>> <http://www.alejandro-colomar.es/>
>> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------fHBlyEGO0lkVscikGepEoFfD--

--------------H4NFP0E663Yd3InzD9qD2ufT
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTEJ/gACgkQnowa+77/
2zJ9Ug/+NfzJ6fwew0IdtynO4Wg0rT+4F4VqnNCPs32IXfeUFSIb1OpwTn/9sKnn
nl1CxW2qXOD3McUJPufqC0j26q7YpGjhILCY/Rj2dM98xH5pZ6LZrAapClgR41y1
mtpAeUa6Biqde/bWtdr0LLuse9eg6bZFw6sfFNwZOgbskHXD46PZwBhyoDTc4fRT
V7lrgnoispdbELSTl8pDpoRl/Ti046uQdzaysJFZ/mwMBXEsjUXCw4BDBvJ4W6hn
d9E4jwWtTbY41Ip4/gpaqR6UQn0OwH22DkPFnHoP4GwFSDUMnOLa4z3eE2QjHSPq
B9p1iOABFAoMsCN5Va3CmZhY9FiLhWAsMbKCXSaIUKjABaest8L8y9moNUFmjUg8
Y8olh2j9FXiFDbezSG8jLYferws7/OdZZI7mMovhOKIY6mOiKSlDBp6/FfA99wDz
98jSxHXXjDOPNtEi0CoYDVS45C9hebm2eeScpaQQcttV1/eAfig8zDC3WPr/MWVx
nOIaylW8Qv8Pj1pvbHW/HIB0UujF5erabKLO5sjrQu9NimmIIvSjvdP5IC7jwK9D
YSb+Xl39FwMbIz0EBwA/j1O+nmyfVAQOYi+GKlggGr9MqCJjVpXlITU0QnBoCZpp
pNjp3Cly5z56u5IXLVyUXSKvcjfFDrmoIS71lpmmqXwNn9Yncuo=
=E/Kq
-----END PGP SIGNATURE-----

--------------H4NFP0E663Yd3InzD9qD2ufT--
