Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B43470AD7E
	for <lists+linux-man@lfdr.de>; Sun, 21 May 2023 12:47:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229719AbjEUKqj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 May 2023 06:46:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230486AbjEUK1w (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 May 2023 06:27:52 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FE64107
        for <linux-man@vger.kernel.org>; Sun, 21 May 2023 03:25:09 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-3f4271185daso48296805e9.2
        for <linux-man@vger.kernel.org>; Sun, 21 May 2023 03:25:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684664708; x=1687256708;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oAkiWmxbhxrOO5zbALQ/kX/rFYlSJV7IwwkhjF/k4G8=;
        b=cb36+7Oys7N1HMzsSXQY08T3YqnfUo/MN+pl47YrRgTc1cjzJUtDQtuVA16Qi8JfYL
         WiZi92XIRi6HA1PXVAQmdnTpFgBYbGT3xjire1Xho+O6Dn2VnEGWxE4FUwh9P8kWBS7p
         DVgKiudw/BiXPG3ieOt8OmQS2OhV521a51NvjaJvA5qxwDoH/0PAc7tl2cPVYQ6OxYeB
         GbMkdLEhj71Ap/kkgcyaTldxS7D8EwDpEtW1PsB/ymiyjg6WIS+JsSfn+aCw52ZP1nq2
         Ag/TM7TmcREmFBby8OXFXnVJXg2ehmsdSClmR+l+fzGWslcmMu4ojcX6dUbdGZ8+tbgX
         f1Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684664708; x=1687256708;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oAkiWmxbhxrOO5zbALQ/kX/rFYlSJV7IwwkhjF/k4G8=;
        b=j+S8gQrrCt3RSpfqpMfYOCVpT4i+YnaLFqB7WoNy37qkWzkD80Z1D33oMSw1hmIXWn
         jc1QKX7kaNSEgUHUds3ptZfxTkYPEJL/dombKfK5leRRtdnvXGsVsxecUoGgPN4WwaSe
         sCUkoFLxC1sLT95ajvvG1/+DsVAQ1g1JAjqNa6PzSaXvEvSzXYhwmVtbDpISxurTTF75
         3TWkxixK9AxS115WZWam71cVuARkwLwI2ydT4Yu3XpUQYcMSgiQ3uCgaspIbjFkuvLJG
         NwzD4SUtXek4N6nODfdWFj8D6MtLlh5FrIRmY7wJoCf6wsW7dgyX+IKIJn/BRJlXRAAy
         RQnA==
X-Gm-Message-State: AC+VfDxrm12BTbdoTW1dvPAMXBzBdgbsr3KLwbjaDSRnYY17vi+6HHK+
        IDte6DwvMjjS12qIFbHeLLq571XslGk=
X-Google-Smtp-Source: ACHHUZ6wg1c3CEinAOTKa7YArl4H18BN0bNP21flvmYQU+9F2jwcvzzngs7CGrgjzL84++GLtQ1FrA==
X-Received: by 2002:a05:600c:ad2:b0:3f6:d2:d8c0 with SMTP id c18-20020a05600c0ad200b003f600d2d8c0mr1703864wmr.19.1684664707681;
        Sun, 21 May 2023 03:25:07 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id e19-20020a05600c219300b003f50876905dsm4835517wme.6.2023.05.21.03.25.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 May 2023 03:25:07 -0700 (PDT)
Message-ID: <93aba0c9-ad1d-d488-1471-be30b7a8bb0c@gmail.com>
Date:   Sun, 21 May 2023 12:24:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: Manual pages from glibc-doc
Content-Language: en-US
To:     Xavier Leroy <Xavier.Leroy@inria.fr>
Cc:     GNU Libc Maintainers <debian-glibc@lists.debian.org>,
        lnx-man <linux-man@vger.kernel.org>,
        glibc <libc-alpha@sourceware.org>,
        Carlos O'Donell <carlos@redhat.com>
References: <703ec07e-dd2b-bbc6-f1bc-f495e53b764f@gmail.com>
 <CAH=h3gFakgz3xcH63h-5nO0L9LuSy2Xr5b2riwpJ1o4L3DzuRg@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAH=h3gFakgz3xcH63h-5nO0L9LuSy2Xr5b2riwpJ1o4L3DzuRg@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0jj6TRkvLBccWY1K0RFpbZIF"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0jj6TRkvLBccWY1K0RFpbZIF
Content-Type: multipart/mixed; boundary="------------hQeJCWbkzG6Qz1jhOCDEl0u9";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Xavier Leroy <Xavier.Leroy@inria.fr>
Cc: GNU Libc Maintainers <debian-glibc@lists.debian.org>,
 lnx-man <linux-man@vger.kernel.org>, glibc <libc-alpha@sourceware.org>,
 Carlos O'Donell <carlos@redhat.com>
Message-ID: <93aba0c9-ad1d-d488-1471-be30b7a8bb0c@gmail.com>
Subject: Re: Manual pages from glibc-doc
References: <703ec07e-dd2b-bbc6-f1bc-f495e53b764f@gmail.com>
 <CAH=h3gFakgz3xcH63h-5nO0L9LuSy2Xr5b2riwpJ1o4L3DzuRg@mail.gmail.com>
In-Reply-To: <CAH=h3gFakgz3xcH63h-5nO0L9LuSy2Xr5b2riwpJ1o4L3DzuRg@mail.gmail.com>

--------------hQeJCWbkzG6Qz1jhOCDEl0u9
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Xavier,

On 5/21/23 11:40, Xavier Leroy wrote:
> Hello Alex,
>=20
> On Thu, May 18, 2023 at 8:23=E2=80=AFPM Alex Colomar <alx.manpages@gmai=
l.com> wrote:
>=20
>> Hello Xavier,
>>
>> I see there are some manual pages in the glibc-doc package.
>> Most of glibc's manual pages are part of the Linux man-pages
>> project.  I would be interested in absorbing the ones present
>> in the glibc-doc package into the Linux man-pages project.
>>
>> That would probably remove whatever overhead there is in
>> maintaining a separate package just for a few manual pages.
>>
>> Would you like that?
>>
>=20
> Well, I wrote those man pages a long time ago, in the late 1990's, to
> document the first version of the LinuxThreads library.  The LinuxThrea=
ds
> code was later completely rewritten by Drepper and Molnar at Redhat (fo=
r
> the better!), so I forgot about the man pages, and did not know they we=
re
> still distributed as part of the glibc-doc package.
>=20
> I hope the pages have been maintained and updated by the Glibc team,
> because the first version that I wrote was fairly specific to the
> LinuxThreads v1 implementation and its limitations, and is probably use=
less
> today.  Likewise, the POSIX Threads standard changed quite a bit in the=

> last 25 years, with new functions that are implemented in Glibc but lac=
k a
> man page in glibc-doc.

Thanks for the history.  I've investigated a bit after your email.
It seems that the pages were removed from glibc upstream in 2005 [1],
and then imported in the Debian glibc source package later in 2013 [2].
The last time a page's text was updated seems from 2002 by Drepper.

>=20
> To answer your question:
> - I don't think it's a good idea to take these man pages "as is" and dr=
op
> them in the man-pages project, because they are probably obsolete and
> incomplete.
> - However, if you or others would like to use these man pages as a star=
ting
> point for a comprehensive, up-to-date and maintained documentation for
> POSIX Threads functions in Linux, you're most welcome.
> - In both cases, I'd like my name and e-mail address to be removed from=
 the
> man pages, as I no longer support them.

Yes, I plan to import these pages, specifying the historic details
found in this thread, keeping your name in the import commit, if you
don't mind, and then remove your name in the first commit, and start
cleaning them up.  I'd compare them to the POSIX pages, to see if
there's any obviously outdated stuff, and fix it.  Small details
that are not obvious from reading POSIX, I guess time will fix them.

So, you want your name removed.  Any other request?  The pages don't
seem to have a license.  Should GPL be applied to them as they were
once part of glibc?  If so, is GPL-3.0-or-later a good one?  Or
should I relicense as Linux-man-pages-copyleft?

Does the above plan look good to you?

Cheers,
Alex

>=20
> Kind regards,
>=20
> - Xavier Leroy
>=20
>=20
>=20
>=20
>=20
>=20
>>
>> Cheers,
>> Alex
>>
>> --
>> <http://www.alejandro-colomar.es/>
>> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>>
>=20

[1]:

alx@debian:~/src/gnu/glibc/glibc$ git lg --stat -- 'linuxthreads/man/pthr=
ead*';
* 88e3fbcb5d N - Sun, 3 Jul 2005 04:40:34 +0000 (18 years ago)
|           linuxthreads, linuxthreads_db: Directories removed (preserved=
 in ports repository). - Roland McGrath|=20
|  linuxthreads/man/pthread_atfork.man               |  53 -----
|  linuxthreads/man/pthread_attr_init.man            | 221 --------------=
----
|  linuxthreads/man/pthread_cancel.man               | 155 -------------
|  linuxthreads/man/pthread_cleanup_push.man         | 194 --------------=
--
|  linuxthreads/man/pthread_cond_init.man            | 234 --------------=
------
|  linuxthreads/man/pthread_condattr_init.man        |  39 ----
|  linuxthreads/man/pthread_create.man               |  46 ----
|  linuxthreads/man/pthread_detach.man               |  44 ----
|  linuxthreads/man/pthread_equal.man                |  23 --
|  linuxthreads/man/pthread_exit.man                 |  32 ---
|  linuxthreads/man/pthread_join.man                 |  70 ------
|  linuxthreads/man/pthread_key_create.man           | 151 -------------
|  .../man/pthread_kill_other_threads_np.man         |  40 ----
|  linuxthreads/man/pthread_mutex_init.man           | 213 --------------=
----
|  linuxthreads/man/pthread_mutexattr_init.man       |  84 -------
|  linuxthreads/man/pthread_mutexattr_setkind_np.man |  39 ----
|  linuxthreads/man/pthread_once.man                 |  34 ---
|  linuxthreads/man/pthread_self.man                 |  23 --
|  linuxthreads/man/pthread_setschedparam.man        |  79 -------
|  linuxthreads/man/pthread_sigmask.man              | 123 ----------
|  20 files changed, 1897 deletions(-)

* a334319f65 N - Wed, 22 Dec 2004 20:10:10 +0000 (18 years ago)
|           (CFLAGS-tst-align.c): Add -mpreferred-stack-boundary=3D4. - U=
lrich Drepper|=20
|  linuxthreads/man/pthread_atfork.man               |  53 +++++
|  linuxthreads/man/pthread_attr_init.man            | 221 ++++++++++++++=
++++
|  linuxthreads/man/pthread_cancel.man               | 155 +++++++++++++
|  linuxthreads/man/pthread_cleanup_push.man         | 194 ++++++++++++++=
++
|  linuxthreads/man/pthread_cond_init.man            | 234 ++++++++++++++=
++++++
|  linuxthreads/man/pthread_condattr_init.man        |  39 ++++
|  linuxthreads/man/pthread_create.man               |  46 ++++
|  linuxthreads/man/pthread_detach.man               |  44 ++++
|  linuxthreads/man/pthread_equal.man                |  23 ++
|  linuxthreads/man/pthread_exit.man                 |  32 +++
|  linuxthreads/man/pthread_join.man                 |  70 ++++++
|  linuxthreads/man/pthread_key_create.man           | 151 +++++++++++++
|  .../man/pthread_kill_other_threads_np.man         |  40 ++++
|  linuxthreads/man/pthread_mutex_init.man           | 213 ++++++++++++++=
++++
|  linuxthreads/man/pthread_mutexattr_init.man       |  84 +++++++
|  linuxthreads/man/pthread_mutexattr_setkind_np.man |  39 ++++
|  linuxthreads/man/pthread_once.man                 |  34 +++
|  linuxthreads/man/pthread_self.man                 |  23 ++
|  linuxthreads/man/pthread_setschedparam.man        |  79 +++++++
|  linuxthreads/man/pthread_sigmask.man              | 123 ++++++++++
|  20 files changed, 1897 insertions(+)

* 0ecb606cb6 N - Thu, 12 Jul 2007 18:26:36 +0000 (16 years ago)
|           2.5-18.1 - Jakub Jelinek|=20
|  linuxthreads/man/pthread_atfork.man               |  53 -----
|  linuxthreads/man/pthread_attr_init.man            | 221 --------------=
----
|  linuxthreads/man/pthread_cancel.man               | 155 -------------
|  linuxthreads/man/pthread_cleanup_push.man         | 194 --------------=
--
|  linuxthreads/man/pthread_cond_init.man            | 234 --------------=
------
|  linuxthreads/man/pthread_condattr_init.man        |  39 ----
|  linuxthreads/man/pthread_create.man               |  46 ----
|  linuxthreads/man/pthread_detach.man               |  44 ----
|  linuxthreads/man/pthread_equal.man                |  23 --
|  linuxthreads/man/pthread_exit.man                 |  32 ---
|  linuxthreads/man/pthread_join.man                 |  70 ------
|  linuxthreads/man/pthread_key_create.man           | 151 -------------
|  .../man/pthread_kill_other_threads_np.man         |  40 ----
|  linuxthreads/man/pthread_mutex_init.man           | 213 --------------=
----
|  linuxthreads/man/pthread_mutexattr_init.man       |  84 -------
|  linuxthreads/man/pthread_mutexattr_setkind_np.man |  39 ----
|  linuxthreads/man/pthread_once.man                 |  34 ---
|  linuxthreads/man/pthread_self.man                 |  23 --
|  linuxthreads/man/pthread_setschedparam.man        |  79 -------
|  linuxthreads/man/pthread_sigmask.man              | 123 ----------
|  20 files changed, 1897 deletions(-)

* 79996eeed1 N - Sun, 28 Jul 2002 19:04:09 +0000 (21 years ago)
|           Update. - Ulrich Drepper|=20
|  linuxthreads/man/pthread_mutex_init.man | 2 +-
|  1 file changed, 1 insertion(+), 1 deletion(-)

* 6736e93bab N - Sat, 6 Apr 2002 01:45:15 +0000 (21 years ago)
|           Update. - Ulrich Drepper|=20
|  linuxthreads/man/pthread_mutexattr_init.man       | 20 +++++------
|  linuxthreads/man/pthread_mutexattr_setkind_np.man | 39 +++++++++++++++=
++++++
|  2 files changed, 49 insertions(+), 10 deletions(-)

* 638621aff9 N - Fri, 14 Dec 2001 22:17:03 +0000 (21 years ago)
|           Update. - Ulrich Drepper|=20
|  linuxthreads/man/pthread_atfork.man | 13 ++++---------
|  1 file changed, 4 insertions(+), 9 deletions(-)

* 0a51738ed9 N - Sun, 23 May 1999 09:27:35 +0000 (24 years ago)
|           Correct example. - Ulrich Drepper|=20
|  linuxthreads/man/pthread_cond_init.man | 5 ++---
|  1 file changed, 2 insertions(+), 3 deletions(-)

* 5afdca0087 N - Wed, 11 Mar 1998 12:42:25 +0000 (25 years ago)
            LinuxThreads library. - Ulrich Drepper =20
   linuxthreads/man/pthread_atfork.man               |  58 +++++
   linuxthreads/man/pthread_attr_init.man            | 221 ++++++++++++++=
++++
   linuxthreads/man/pthread_cancel.man               | 155 +++++++++++++
   linuxthreads/man/pthread_cleanup_push.man         | 194 ++++++++++++++=
++
   linuxthreads/man/pthread_cond_init.man            | 235 ++++++++++++++=
++++++
   linuxthreads/man/pthread_condattr_init.man        |  39 ++++
   linuxthreads/man/pthread_create.man               |  46 ++++
   linuxthreads/man/pthread_detach.man               |  44 ++++
   linuxthreads/man/pthread_equal.man                |  23 ++
   linuxthreads/man/pthread_exit.man                 |  32 +++
   linuxthreads/man/pthread_join.man                 |  70 ++++++
   linuxthreads/man/pthread_key_create.man           | 151 +++++++++++++
   .../man/pthread_kill_other_threads_np.man         |  40 ++++
   linuxthreads/man/pthread_mutex_init.man           | 213 ++++++++++++++=
++++
   linuxthreads/man/pthread_mutexattr_init.man       |  84 +++++++
   linuxthreads/man/pthread_once.man                 |  34 +++
   linuxthreads/man/pthread_self.man                 |  23 ++
   linuxthreads/man/pthread_setschedparam.man        |  79 +++++++
   linuxthreads/man/pthread_sigmask.man              | 123 ++++++++++
   19 files changed, 1864 insertions(+)



[2]:

alx@debian:~/src/debian/glibc$ git lg --stat -- 'debian/local/manpages/pt=
hread*';
* 2c35c554 N - Fri, 29 Nov 2013 11:00:45 +0000 (9 years ago)
              * Remove linuxthreads from the tarball:     - rules.d/tarba=
ll.mk: don't fetech linuxthreads and linuxthreads_db.     - rules.d/build=
=2Emk: don't build linuxthreads manpages.     - rules: don't run make cle=
an in linuxthreads directory.     - patches/any/local-sysctl.diff: drop t=
he linuxthreads part.     - patches/all/local-pthread-manpages.diff: remo=
ve.     - local/manpages/pthread_*.3: import the few remaining linuxthrea=
ds       manpages.     - debhelper.in/glibc-doc.manpages: update manpage =
locations. - Aurelien Jarno =20
   debian/local/manpages/pthread_atfork.3               |  53 +++++++
   debian/local/manpages/pthread_cond_init.3            | 229 +++++++++++=
+++++++++++++++++++
   debian/local/manpages/pthread_condattr_init.3        |  38 +++++
   debian/local/manpages/pthread_key_create.3           | 151 +++++++++++=
+++++++++
   debian/local/manpages/pthread_mutex_init.3           | 209 +++++++++++=
++++++++++++++++
   debian/local/manpages/pthread_mutexattr_init.3       |  81 +++++++++++=

   debian/local/manpages/pthread_mutexattr_setkind_np.3 |  38 +++++
   debian/local/manpages/pthread_once.3                 |  34 +++++
   8 files changed, 833 insertions(+)

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------hQeJCWbkzG6Qz1jhOCDEl0u9--

--------------0jj6TRkvLBccWY1K0RFpbZIF
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRp8XEACgkQnowa+77/
2zL07A//Y9wocZVJusWiFFAU2MSFg/mC/7jCviZ8g8apRKYrKDJmUwxCfrts7JbA
22h9PBzQgZyGpqJfFnlmx629GQBVd+UM7bYqDVgWUR3g1etaXP0N0NN7+CsShG19
AWPu2FhTEwBIjrmSDM9Ht9jjtA8+YuQNl/8GoXOZ+M6Pfn/k1O2KQ6Zma39U67uf
8xCImAlBNLm8VPK2WtiIEsFA0oeeqd0vvcqxQz3kViYPaCGLTjtah3p/q0xAWaA1
BQ9HFV6FKbcsV98saZlBRSrqLS5q/hfp3AZBrTkTO0Yk0PdDL8nEEo2Pd+CNDN5z
oWKSZzzTZNip/1bm8CBYsaXr6OS0MXWVYRLSSxTuOd76VXYgm167hEhyB0lQ+pYf
cB0eWpuBFHegH67U/zuTGcBkfVC6MDgFCfJuxD6JanGzRXRzmBSKXjpIHllGU1M2
a7p9F5eRVkIVlkjQ709Gr0g86vjf5P+UGF7pVoaK4oT3ctkUn5qMyNGAYvv5MrLT
/2wDA7shsFkS0TjJmJfcVFxs1YOxZT1GA9s6dTzA8+5tXVmICEMV/3Y3bCYra+KR
nvt3GP2LXjLy4Aussqk5d59c6WPc+Jg9513gle7GdngwtbAvzUg4D3Ui9lEYaOnU
FEBBTstQl4v4+QgTSF1HlgeJ6dsOHJ9y4maxFWxz8E9M47s9SpY=
=iDYd
-----END PGP SIGNATURE-----

--------------0jj6TRkvLBccWY1K0RFpbZIF--
