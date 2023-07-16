Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A5408754F3E
	for <lists+linux-man@lfdr.de>; Sun, 16 Jul 2023 17:11:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229809AbjGPPLP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 16 Jul 2023 11:11:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230076AbjGPPLN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 16 Jul 2023 11:11:13 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3E8110E0
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 08:11:09 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 540ED60D2C
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 15:11:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2E95C433C7;
        Sun, 16 Jul 2023 15:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689520268;
        bh=zdg4lm+FMgEGN7sPf1TB4x3zR+VPdWmRpeRO9OhDc5U=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=ZrPH5MGaOUEerTggoZzrcrPDkIadPtqwQLnKE41QcQMOJ23+LH4gW733B+xRW/UXe
         KF9ub80rZFmrJbAwbiYzyCVRzuy74iUJ0WAxHcHwlEbEe4uIzzMIQWI7uF2US2dH/5
         S7ht/53Y17z2P2Nconx07pjrVzeSMwf/rVpCnXmfFILXZ74JNm2mtoLJicuvYgpRAx
         vmB44sUsMTZwLbAt/m7hC+LwN7uim2D+/hVYKYi0wtUNha9PVUClKsblgy8WyxqHhn
         ZDr9b0pVN7z8x98jzIJobOxjO6A1Gl0pvQ/DFkADVHowmmHzC93MM4rFqfNQje8uJN
         82cNF/GqH7EoQ==
Message-ID: <01b73f96-4ef4-fe26-face-9a027880b205@kernel.org>
Date:   Sun, 16 Jul 2023 17:11:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v5] grantpt.3: no-op on modern glibc and other UNIXes
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <062f90e1-25e1-295f-9c58-31c8da7b8f24@kernel.org>
 <van5n7dhx63tbicenevvkkg624su7xcsjrffhicjruvmdii4yk@j52kjf6qgwko>
 <93fb63f5-45a9-83b1-d89f-d0cc2f02635c@kernel.org>
 <eklhtzoqulcwzu73m2h3si7e3p3qdzburpjmvmyhd66o7h2xbb@4w6pgoplb5lh>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <eklhtzoqulcwzu73m2h3si7e3p3qdzburpjmvmyhd66o7h2xbb@4w6pgoplb5lh>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------V5RvYECIquPEQgwKvhlWsZ0E"
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------V5RvYECIquPEQgwKvhlWsZ0E
Content-Type: multipart/mixed; boundary="------------k3YdfUIjjLYqpaaKNA1gP04k";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Message-ID: <01b73f96-4ef4-fe26-face-9a027880b205@kernel.org>
Subject: Re: [PATCH v5] grantpt.3: no-op on modern glibc and other UNIXes
References: <062f90e1-25e1-295f-9c58-31c8da7b8f24@kernel.org>
 <van5n7dhx63tbicenevvkkg624su7xcsjrffhicjruvmdii4yk@j52kjf6qgwko>
 <93fb63f5-45a9-83b1-d89f-d0cc2f02635c@kernel.org>
 <eklhtzoqulcwzu73m2h3si7e3p3qdzburpjmvmyhd66o7h2xbb@4w6pgoplb5lh>
In-Reply-To: <eklhtzoqulcwzu73m2h3si7e3p3qdzburpjmvmyhd66o7h2xbb@4w6pgoplb5lh>

--------------k3YdfUIjjLYqpaaKNA1gP04k
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 2023-07-16 16:52, =D0=BD=D0=B0=D0=B1 wrote:
> Hi!
>=20
> On Sun, Jul 16, 2023 at 03:46:10PM +0200, Alejandro Colomar wrote:
>> On 2023-07-16 13:55, =D0=BD=D0=B0=D0=B1 wrote:
>> [...]
>>> I read it but didn't really understand what you were saying, since
>>> you're on record as a text=E2=80=92text=E2=80=92text liker.
>> In this context, I'm not sure if to read that as that being just
>> emphasis on me being a text liker, which is true-true-true, or if
>> (more likely) "text" are placeholders for random text, and you claim
>> that I'm on record liking no spaces between em dashes.  If it's the
>> latter, I believe I am not, and you might have been confused by some
>> of those records?  Could you point me to the records?
> I think you've said it to me before but I can't strictly find the mail
> (but I'd hopefully blame that on my mail searching).
>=20
>> Maybe I had
>> some brain-fart and defended that at some point, but I do not like
>> that style personally.
> Neither do I but I, as usual, consulted the corpus, and it said
>   $ git grep -F '\[em]' | grep -Fe '\[em] ' -e '\[em] ' -c
> to around 160/16 vs -cv.
>=20
> Thus, I did what the corpus says.
>=20
>> Basically, it is something similar to why we should write punctuation
>> outside of quotes, unless they belong to them, so if I quote someone
>> who said "Hello world!", I include '!' in the quote, as it belongs to
>> the quote, but the ',' belongs to my text.
> This is known (unfairly-)derisively as "programmer punctuation".
>=20
>> The reason that I like spaces in (only) one side of em dashes --and I
>> also like closing em dashes even right before other punctuation-- is
>> to make parsing the text less complex.  I've seen cases where in a
>> paragraph, several em-dash asides appear, and it's hard to understand
>> what is the main text and what are the asides, especially when the
>> closing em dash of one of them is omitted.
> The corpus sayeth:

Michael wrote most of that corpus, and that's one of the very few
points where I disagree with him.  I may have written myself some of
those, for continuity with the corpus, but I dislike it.

I may reform all of it to get rid of such cases.  Let's add it to my
TODO list:

-  'Linux v[0-9]\+'  (I see 5 cases.)
-  Logic em dashes.
-  Get rid as much as possible of \f.
-  Transform the remaining \f into \f[].
-  Split proc(5).

>   $ git grep -F '\[em]' | grep -e '\\\[em\] ' -e ' \\\[em\]'  -e ':\\\[=
em\]' -e '\\\[em\]$' | grep -v @
>   man2/futex.2:.IR "futex word" \[em]whose
>   man2/get_mempolicy.2:.IR nodemask \[em]that
>   man2/ioctl_iflags.2:.IR "inode flags" \[em]attributes
>   man2/madvise.2:\[em]including tmpfs (see
>   man2/madvise.2:.BR tmpfs (2))\[em]
>   man2/mbind.2:.BR MAP_ANONYMOUS \[em]or
>   man2/perf_event_open.2:\[em]added, divided (to get ratios), and so on=
\[em]
>   man2/uname.2:\[em] this is the largest value likely to be encountered=
 in the wild.
>   man3/grantpt.3:\[em]with permissions configured on pty allotion, as i=
s the case on Linux\[em]\c
>   man3type/stat.3type:.RI fields\[em] st_atime ,
>   man3type/stat.3type:.IR st_ctime \[em]typed
>   man4/intro.4:/dev/* \[em] device files
>   man4/st.4:.SS MTIOCTOP \[em] perform a tape operation
>   man4/st.4:.SS MTIOCGET \[em] get status
>   man4/st.4:.SS MTIOCPOS \[em] get tape position
>   man7/man.7:.\" .IP \[em] 3m
>   man7/man.7:.\" .IP \[em]
>   man7/man.7:.\" .IP \[em]
>   man7/man.7:.\" .IP \[em]
>   man7/path_resolution.7:the process \[em] or in the case of
>   man7/tcp.7:Use this option with care \[em] it makes TCP less tolerant=
 to routing
>   man7/unicode.7:Information technology \[em] Universal Multiple-Octet =
Coded Character
>   man7/unicode.7:Set (UCS) \[em] Part 1: Architecture and Basic Multili=
ngual Plane.
>   man7/x25.7:Message boundaries are preserved \[em] a
> of which these use =E2=80=92s as interjective commas:
>   man2/futex.2:.IR "futex word" \[em]whose
>   man2/madvise.2:\[em]including tmpfs (see
>   man2/madvise.2:.BR tmpfs (2))\[em]
>   man2/mbind.2:.BR MAP_ANONYMOUS \[em]or
>   man2/perf_event_open.2:\[em]added, divided (to get ratios), and so on=
\[em]
>   man3/grantpt.3:\[em]with permissions configured on pty allotion, as i=
s the case on Linux\[em]\c
> (whoops allotion, should be allocation)

nice catch :)

>   man3type/stat.3type:.RI fields\[em] st_atime ,
>   man3type/stat.3type:.IR st_ctime \[em]typed
> of which these have spacing around the outside:
>   man2/madvise.2:\[em]including tmpfs (see
>   man2/madvise.2:.BR tmpfs (2))\[em]
>   man2/perf_event_open.2:\[em]added, divided (to get ratios), and so on=
\[em]
>=20
> This is, I'm pretty sure, the first time I've encountered this style,
> and it kinda looks like a formatting error to me.
>=20
> v6 with
>   op =E2=80=94with permissions configured on pty allocation, as is the =
case on Linux=E2=80=94 or an ioctl(2).
> scissored below.

Thanks!  I'll review later.

Cheers,
Alex

> -- >8 --
> FreeBSD, OpenBSD, and Linux (/dev/ptmx) do all intialisation in open(2)=
,
> and grantpt(3) is a no-op (that checks whether the fd is a pty, except =
on
> musl).
>=20
> The illumos gate and NetBSD do a ioctl (and, indeed, illumos-gate commi=
t
>  facf4a8d7b59fde89a8662b4f4c73a758e6c402c ("PSARC/2003/246 Filesystem
>   Driven Device Naming"), which kills pt_chmod, notes that it's been
>  "6464196 bfu should remove pt_chmod, obsoleted by /dev filesystem").
>=20
> glibc 2.33 completely kills BSD PTY support on Linux
> (Debian hasn't configured with them on any architecture since 2007:
>    https://bugs.debian.org/338404
>  and even earlier on some arches; they're really just trivia under
>  Linux =E2=80=92 this may be better served stuffed into HISTORY as an e=
xplainer
>  for the SIGCHLD thing, since regardless of the "version", the behaviou=
r
>  is well-defined and consistent).
>=20
> Cc: Jakub Wilk <jwilk@jwilk.net>
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
>  man3/grantpt.3 | 18 ++++++++----------
>  1 file changed, 8 insertions(+), 10 deletions(-)
>=20
> diff --git a/man3/grantpt.3 b/man3/grantpt.3
> index a19172a3e..3c753da03 100644
> --- a/man3/grantpt.3
> +++ b/man3/grantpt.3
> @@ -84,17 +84,15 @@ .SH ATTRIBUTES
>  .ad
>  .sp 1
>  .SH VERSIONS
> -Many systems implement this function via a set-user-ID helper binary
> +Historical systems implemented this function via a set-user-ID helper =
binary
>  called "pt_chown".
> -On Linux systems with a devpts filesystem (present since Linux 2.2),
> -the kernel normally sets the correct ownership and permissions
> -for the pseudoterminal slave when the master is opened
> -.RB ( posix_openpt (3)),
> -so that nothing must be done by
> -.BR grantpt ().
> -Thus, no such helper binary is required
> -(and indeed it is configured to be absent during the
> -glibc build that is typical on many systems).
> +glibc on Linux before glibc 2.33 could do so as well,
> +in order to support configurations with only BSD pseudoterminals;
> +this support has been removed.
> +On modern systems this is either a no-op
> +\[em]with permissions configured on pty allocation, as is the case on =
Linux\[em]
> +or an
> +.BR ioctl (2).
>  .SH STANDARDS
>  POSIX.1-2008.
>  .SH HISTORY

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------k3YdfUIjjLYqpaaKNA1gP04k--

--------------V5RvYECIquPEQgwKvhlWsZ0E
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmS0CIkACgkQnowa+77/
2zLL6g/+NxRxqU7ikcegQww5LAFswiOKrOTNSGSkFLtwvHAxfZMLAJTTaWzKFCvW
dIASn/T23XSsBTfuH3vFKvls7HflwynvcTvIvOwF43wQcG5+WjbGbd5c61XipK7Z
9/9okitkM/tGT1LwSo8eXSjefSXKIh/bot78I1O/srC4Sk30Z6eE7wW3Z4hmz3R5
8OHUEgsjqdoTXhTXoSi+gP6+vu8cLFiw4r5mZFntkdnAX7oZLnXCiCi4Lu1D8T3R
ddLC1u1Uvx61xIVdwyq2eVetTaAGe/UzCawoMIjuY4gI1mPYa9DcgC6ik9bWzHcT
sYQPkfKsrIrmmBh0qg3E9eVtV3L18Z4lb0aXe3LfIQF0LKI4l8e6+dshkU5hUbVT
neuJdLCr8iWmEuds9tGJGhuaGQ561DE1haQUOd9s+sPuI33EHGQmhG/n6JASb1kD
Syj8SuSO9ViL6+xf9RZ3bpmobht5TG1Hz46s0NG01W1hj9hzNwku/cFVoIm0cgbB
yi0Y52omfpkpn89qFmTWlrMFr34r/Nql4/kt6loU+mCctSA1E7pjbi2ZVcatFcrg
q+6Kjldn58UlsFoj9vWG5TpTp29HR510BO8fjyK/p2H03Y+Q0J/wbv0w4WkY2L5Q
pLEuecrFUJA70H46V/Z9nBHDi3jfzHZA033wHIFTA5MeaeDrUnc=
=8p4W
-----END PGP SIGNATURE-----

--------------V5RvYECIquPEQgwKvhlWsZ0E--
