Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 628CD6D12D6
	for <lists+linux-man@lfdr.de>; Fri, 31 Mar 2023 01:09:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230360AbjC3XJH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 30 Mar 2023 19:09:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229717AbjC3XJG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 30 Mar 2023 19:09:06 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5345CA0F
        for <linux-man@vger.kernel.org>; Thu, 30 Mar 2023 16:09:04 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id j24so20711487wrd.0
        for <linux-man@vger.kernel.org>; Thu, 30 Mar 2023 16:09:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680217743; x=1682809743;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Av1n10xk33xSufeg4CRILMjSpyX+kxczz9iuyx4Llp4=;
        b=AYsPqF6LsA8HB0QIeBtQdt7BfrRe/R68aQ0Uiv9+FONmSO5IDFk0zOUk5rbrhVYEli
         U2D5r0b+xmEM3RgFXhOa0whJkwVVHRy3/rRd5LzvGlRFpEWR8LEh5CfcAJ/ID9t9aidK
         9dR4cBsuWdBR12692NjkH5plYG9Rl2tUUOPQko9lMdCnyQyYpRZH2iZzWXW/Hh4iw0o7
         Go6bERxWhQ6/UTv7LkAI3KRqM0pY3Bp1WPm82wMPy7lFuKKB+Z7S5E/inoJff9lwa40+
         KDUyn+s+7avPaPi1ZqB6zuU3qXvujDBN6IEDyo49qPcan1ALWALIgJZ07yFOhPqSnDAZ
         xjgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680217743; x=1682809743;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Av1n10xk33xSufeg4CRILMjSpyX+kxczz9iuyx4Llp4=;
        b=RGcUZvfrDp5YqlUZd0usOWzo6rKLhzDvozL8l7jFIx8ioRpI/zPfLy+ezkMRxnwcKL
         DnRWchHYnDckKIqkBxmXmkbGAMLuhSvyEgevdsWZQL7lvD1vRUg9xHpsRgoQoGzjyLVH
         /us3lMF0hoQpaeHH1aBGy9Lg4pFhSoJWIq5uxW5ns8yvfmrPdUzlmXuKpTuLQ3LzRrmk
         Ha6hGFa2ltDCoXXuBI3xar4JRHKy9bdebUF73p1P48LEcgV2ITCK7wSKrhf5ALE5WcXL
         jaOqGgtcDBqbYi1A5ulwQwX5rFYsKcfQ5yQiP9WaItqGuZrJITCssECi1gUoxblRjs9P
         PlSA==
X-Gm-Message-State: AAQBX9c7YgHRxxYPW3KWsQ+qpFlX9l/6UOM8hX1LiOvevYn7u3RyoX4H
        aYK9DsurlCaG5U2XE0F9BootqsOms80=
X-Google-Smtp-Source: AKy350azF776BCifJIQuRt7pbbzMK812hMkfvIjFrso3x9ymU5B4BSTdeOQS9cWIWidBo8UtVLLoeA==
X-Received: by 2002:adf:ed4c:0:b0:2e5:9101:e3ae with SMTP id u12-20020adfed4c000000b002e59101e3aemr685783wro.25.1680217742900;
        Thu, 30 Mar 2023 16:09:02 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id k17-20020adfe8d1000000b002c8ed82c56csm515440wrn.116.2023.03.30.16.09.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 16:09:02 -0700 (PDT)
Message-ID: <2a994c08-c324-06c6-384c-13a529f3f5ff@gmail.com>
Date:   Fri, 31 Mar 2023 01:08:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [patch] Add docs on mount namespace rootfs access and pid
 namespace pid mapping
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Craig Ringer <craig.ringer@enterprisedb.com>,
        linux-man@vger.kernel.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <CAGRY4nx5R6d5iH1SUZHEuJO+M67h1p1zLNQB_6F6X5GGBKFYeg@mail.gmail.com>
 <2678e0e8-0057-7b63-a3a0-9f49b57f0cf4@gmail.com>
In-Reply-To: <2678e0e8-0057-7b63-a3a0-9f49b57f0cf4@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Sp8qluySvsj6iC0aVG1jSo40"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Sp8qluySvsj6iC0aVG1jSo40
Content-Type: multipart/mixed; boundary="------------AElE44RHRUeOYNnyUcNCviKN";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Craig Ringer <craig.ringer@enterprisedb.com>, linux-man@vger.kernel.org
Cc: Michael Kerrisk <mtk.manpages@gmail.com>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <2a994c08-c324-06c6-384c-13a529f3f5ff@gmail.com>
Subject: Re: [patch] Add docs on mount namespace rootfs access and pid
 namespace pid mapping
References: <CAGRY4nx5R6d5iH1SUZHEuJO+M67h1p1zLNQB_6F6X5GGBKFYeg@mail.gmail.com>
 <2678e0e8-0057-7b63-a3a0-9f49b57f0cf4@gmail.com>
In-Reply-To: <2678e0e8-0057-7b63-a3a0-9f49b57f0cf4@gmail.com>

--------------AElE44RHRUeOYNnyUcNCviKN
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Craig,

I'm checking old mail, and see that this thread was unresolved.  Do
you still have this patch around and are interested in sending it?\

Thanks,

Alex

On 3/14/22 15:05, Alejandro Colomar (man-pages) wrote:
> Hi Craig,
>=20
> On 3/14/22 07:10, Craig Ringer wrote:
>> The attached 4-patch series adds information to the mount namespaces
>> and pid namespaces documentation to help users discover how to access
>> important related information.
>>
>> 1. Elaborate on /proc/[pid]/root and x-ref it
>> 2. Mention /proc/$pid/status NSpid in pid_namespaces
>> 3. Mention pid namespaces /proc/[pid]/root/proc
>> 4. Additional namespaces related x-refs
>>
>> 1): Mention /proc/[pid]/root in mount_namespaces(7) to help people
>> discover how to access the file system tree seen by a process in
>> another mount namespace. In the proc (5) entry for it, warn about the
>> possibly-confusing semantics of readlink() vs following the path in
>> the vfs layer.
>>
>>   Adding because I found it difficult to figure out how to access the
>> file system seen by another process in a disjoint chroot in a
>> non-ancestor mount namespace.
>>
>> 2): Mention the /proc/[pid]/status NSpid field and related fields in
>> pid_namespaces (7) to help people discover how to map process IDs
>> between a parent namespace and any child namespace(s) the process is
>> in.
>>
>>   Adding because I found it difficult to discover how to map pids
>> between namespaces.
>>
>> 3): Mention how /proc/[pid]/root/proc behaves when [pid] is in a
>> different pid namespace. It's useful to know that you can see another
>> process's view of procfs via its /proc/[pid]/root link.
>>
>> 4): Some minor cross-references and see-alsos that would've helped me
>> during unrelated past efforts.
>=20
> PATCH 1/4:
>=20
>> Subject: [PATCH v1 1/4] Elaborate on /proc/[pid]/root and x-ref it
>=20
> Please mention the modified page(s) in the Subject line.
> See <https://www.kernel.org/doc/man-pages/patches.html>.
>=20
> Also, per the same documentation, please send the patches inline (or
> inline + attached if your mailer is likely to break the patches) if you=

> can, since it's easier for us to review and work with them.
>=20
>>
>> Mention /proc/[pid]/{root,cwd,exe,fds} in mount_namespaces (7)
>> to help users understand how to access the file system tree of
>> a process in different mount namespace and possibly-disjoint
>> chroot.
>>
>> In proc (5) provide a little more detail on how links like
>> /proc/[pid]/root behave when read with readlink (2) vs when
>> resolved via kernel vfs layer path lookup. It can be quite confusing
>> that "readlink /proc/$pid/root" prints "/" so
>> "ls $(readlink /proc/$pid/root)" has the same result as "ls /" but
>> "ls /proc/$pid/root/" actually lists the target pid's root.
>>
>> Signed-off-by: Craig Ringer <craig.ringer@2ndquadrant.com>
>> ---
>>  man5/proc.5             | 29 ++++++++++++++++++++++++++++-
>>  man7/mount_namespaces.7 | 14 ++++++++++++++
>>  2 files changed, 42 insertions(+), 1 deletion(-)
>>
>> diff --git a/man5/proc.5 b/man5/proc.5
>> index c6684620e..2eed160e2 100644
>> --- a/man5/proc.5
>> +++ b/man5/proc.5
>> @@ -658,6 +658,12 @@ are not available if the main thread has already =
terminated
>>  (typically by calling
>>  .BR pthread_exit (3)).
>>  .IP
>> +If the process is in a chroot and/or a different mount namespace, rea=
ding the
>=20
> Please use semantic newlines
> (i.e., break after that comma, instead of just before col 80).
> See man-pages(7):
>=20
> STYLE GUIDE
>        [...]
>    Use semantic newlines
>        In the source of a manual page, new sentences  should  be
>        started on new lines, long sentences should be split into
>        lines  at  clause breaks (commas, semicolons, colons, and
>        so on), and long clauses should be split at phrase bound=E2=80=90=

>        aries.  This convention,  sometimes  known  as  "semantic
>        newlines",  makes it easier to see the effect of patches,
>        which often operate at the level of individual sentences,
>        clauses, or phrases.
>=20
>> +symlink path will return the executable path relative to the process'=
s root.
>> +Opening the path within the kernel vfs layer will yield the actual ex=
ecutable
>> +contents even if  the path does may not exist within the currently ac=
tive mount
>> +namespace.
>> +.IP
>>  Permission to dereference or read
>>  .RB ( readlink (2))
>>  this symbolic link is governed by a ptrace access mode
>> @@ -1830,7 +1836,8 @@ and
>>  .IP
>>  Note however that this file is not merely a symbolic link.
>>  It provides the same view of the filesystem (including namespaces and=
 the
>> -set of per-process mounts) as the process itself.
>> +set of per-process mounts) as the process itself
>> +if dereferenced via the kernel vfs layer.
>>  An example illustrates this point.
>>  In one terminal, we start a shell in new user and mount namespaces,
>>  and in that shell we create some new mounts:
>> @@ -1866,6 +1873,26 @@ sh2# \fBls /usr | wc \-l\fP                  # =
/usr in initial NS
>>  .EE
>>  .in
>>  .IP
>> +If the target process is in a different mount namespace
>> +and has a different root, following the
>> +.B /proc/[pid]/root
>> +link directly will resolve paths relative to the target
>> +process's root. But
>> +.BR readlink (2)
>> +will return the root path as seen from within the target process's mo=
unt
>> +namespace. Tools that canonicalize paths or resolve symbolic links in=

>=20
> Always start sentences after '.' in a new line.
> That's already covered by "semantic newlines" (see above),
> but it's especially important in this case because
> groff(1) prints (at least) 2 spaces after '.' normally,
> but if you write it this way it doesn't.
>=20
> BTW, Branden,
> I CCd you because I didn't find this documented in groff(7),
> or at least I couldn't find it.
> I tried /\.[^ [a-z]] and also keywords like period, point or dot,
> but no luck.
> Is it documented anywhere?
>=20
>> +user-space will not be able to see the target process's root. So
>> +.B ls $(realpath /proc/[pid]/root)
>=20
> Commands should use italics (.I) instead of bold (.B).
> See man-pages(7):
>=20
> [
> STYLE GUIDE
>        [...]
>    Formatting conventions (general)
>        [...]
>        Complete commands should, if long, be written as  an  in=E2=80=90=

>        dented  line  on  their own, with a blank line before and
>        after the command, for example
>=20
>            man 7 man-pages
>=20
>        If the command is short, then it can be  included  inline
>        in  the  text,  in italic format, for example, man 7 man-
>        pages.  In this case, it may be worth  using  nonbreaking
>        spaces  (\~)  at suitable places in the command.  Command
>        options should be written in italics (e.g., -l).
> ]
>=20
> Variable text inside running italics should be in roman.
> So instead of writing [pid], you should use:
> .IR "ls $(realpath /proc/" pid /root)
>=20
> See groff_man_style(7):
>=20
> [
> Description
>        [...]
>    Font style macros
>        [...]
>        .I [text]
>               Set text in italics.  If the macro is given no ar=E2=80=90=

>               guments, the text of the next input line is set in
>               italics.
>=20
>               Use italics for file and path names, for  environ=E2=80=90=

>               ment  variables, for C data types, for enumeration
>               or  preprocessor  constants  in  C,  for  variable
>               (user-determined) portions of syntax synopses, for
>               the first occurrence (only) of a technical concept
>               being  introduced,  for  names  of journals and of
>               literary works longer than an  article,  and  any=E2=80=90=

>               where  a  parameter  requiring  replacement by the
>               user is encountered.  An exception involves  vari=E2=80=90=

>               able  text  in a context that is already marked up
>               in italics, such as file or path names with  vari=E2=80=90=

>               able components; in such cases, follow the conven=E2=80=90=

>               tion  of  mathematical typography: set the file or
>               path name in italics as usual but  use  roman  for
>               the  variable  part  (see  .IR and .RI below), and
>               italics again in running roman text when referring
>               to the variable material.
> ]
>=20
>> +will expand to
>> +.B ls /
>> +and print the root of the invoking shell, but
>> +.B ls /proc/[pid]/root/
>> +will list the contents of
>> +.B /
>> +as seen by [pid]. See
>=20
> In this case, use:
> .IR pid .
>=20
> Se rationale above.
>=20
>> +.BR mount_namespaces (7)
>> +for details.
>> +.IP
>>  .\" The following was still true as at kernel 2.6.13
>>  In a multithreaded process, the contents of the
>>  .I /proc/[pid]/root
>=20
> BTW, I now realize that the manual page is currently incorrectly
> formatted according to what I just said above.
> So, please don't fix that in your patch,
> so that the whole page is consistent with itself,
> and I'll fix the whole page after your patch
> (and some other pages that seem to the same problem). :)
>=20
>> diff --git a/man7/mount_namespaces.7 b/man7/mount_namespaces.7
>> index 7725b341f..98bfd864c 100644
>> --- a/man7/mount_namespaces.7
>> +++ b/man7/mount_namespaces.7
>> @@ -75,6 +75,20 @@ and
>>  in either mount namespace will not (by default) affect the
>>  mount list seen in the other namespace
>>  (but see the following discussion of shared subtrees).
>> +.PP
>> +The pseudo-symlinks
>> +.IR /proc/[pid]/exe ,
>> +.IR /proc/[pid]/root ,
>> +.IR /proc/[pid]/fds ,
>> +and
>> +.IR /proc/[pid]/cwd
>> +provide views into the mount namespace of
>> +.IR [pid]
>> +from outside that namespace.
>> +These links provide a way to access the mount namespace seen by anoth=
er process
>> +- even if its root is disjoint from the current process's root. See
>> +.BR proc (5)
>> +for details and caveats.
>>  .\"
>>  .SH SHARED SUBTREES
>>  After the implementation of mount namespaces was completed,
>> --=20
>> 2.34.1
>>
>=20
> Thanks!
>=20
> Alex
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------AElE44RHRUeOYNnyUcNCviKN--

--------------Sp8qluySvsj6iC0aVG1jSo40
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQmFoYACgkQnowa+77/
2zJc0A//XtEPr89AL0Dtc+9Uit5OGaClHWrrUbEYqaU2xKB1lu9cP9nfzwzOxj+N
YD7iyomSpVqH1xv3+qkp5tJkEpuNd+0xelAMOjwL3vHbWM60nzzldIT5kRmiYv7g
d0uXZQT0s6LV+6a3yt56kKnsYYs14wBhS45QIR6Kgcyk817rLv3YRuVbR0U52Gpm
1u7emjPrOuPQy5iuFfTBxWLrQSNatVQpGas2Zji1uvezHSjqdjVxfXDUI7vD4Pwk
8eAlczBW63jgzbUvG6sajUb5Zgt/Nca0tXo62U5WKqnNwreY5Yu8wSLTBTOpHaI+
Y98qd3MYTuA1cI6EAPRlB72Rbjhu0sPBASaf1Xy07pXtBU0AIIzAcA5MyY4WvVxV
TNgbTzSI99mqdjEQeBymj1QaNFgQZBalln4xDh6O2p+O6WZX1k7AzbWZmDwIrNr/
SMfPJFoC2scil9e1WOE2HYGitsQ91xB/cqyvdZJi3R2nGccyYjzJ2MOTl8CAZfwP
F46M0NdUzlMpzyJtxcyktCIVttDtN9S19YBBJTPvZy3vSDvUFp4vKWWlLanR4aB5
O6+pRNtafDs5NqPf6YvE9OnApEHOsx+5G4HDRaWhrL2ZK0poEtXlmfs4VocEjVjU
H8ET1Voob0je2vFpfXiIjgJMfOe7q3A3jyUNnbLniGCV6fy7IBI=
=LnqN
-----END PGP SIGNATURE-----

--------------Sp8qluySvsj6iC0aVG1jSo40--
