Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D8A56EA774
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 11:46:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229820AbjDUJqE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 05:46:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229565AbjDUJqD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 05:46:03 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53252B74F
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 02:45:12 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-3f191c1a8a7so3305675e9.1
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 02:45:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682070310; x=1684662310;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=42gDNCSNFcVu7Iy2iAqb/BVAdrOfT7OdXvBNlrM6kM8=;
        b=K8Ll9V+cq3XmUkUEgT+c0wbvsJEoenfMHpOjiR/pp6Tcrhdp5znLLmTXguhkCTOVaQ
         bO85FiWcOb0tYV1ByfaSILQz4LxYIkhJ0kOYHTxwzj5B/7EyGCzKyMZsDvIs8/xqUomK
         1TF2N+HllOgS5QSRRbaBkbiyKs2DblFDc4uCJ3Be9Wl3bFIeEmpevoF0tGTY2mNBFDBh
         l8A9Vsz+5cUC7k0AGYV0wQPROj5ra8954XXqBBnXH4UfraFlY6oq0ANJoUn35jjUa7d3
         8RcQzScGrK1P2YyNBhIXIljymGg94X7Ze/zC8Rvj7ShhwoHhLcJUay5yRvoVRdie393E
         lNmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682070310; x=1684662310;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=42gDNCSNFcVu7Iy2iAqb/BVAdrOfT7OdXvBNlrM6kM8=;
        b=IfymCYfEgGjHh7TaL66/+btE65pcREUJ9/cscPjhIm1FPZNvjiV0GqS4iMb0XQk/x3
         3cTrXy6vfdof0PnmnKc4tFEKM2eFy87rqvl6fIHyiy9qpOXaT9AKwv9ondBSpUk78j5X
         ulo/yPMw5WLksEuAtiJF/U/4Z3pAjr09570VhB1fu4O8JCPbGUUhdQkIjqjV5WQ6HHbt
         bOy72dvgq4lAWVfJFsx+96ky41vyiOCi/R68yAyecdqtx+CdejqjYJHuNKdxXNllDKpJ
         BrpDzddAaR7v+EBVBtZR9Kt3wR/rNArP/fBmC0NpGf1486r7rY4bqU89ZtYDTzNf0g7Y
         +2xA==
X-Gm-Message-State: AAQBX9dALV2dJEUNsQabzQWHpWTc8R3uVJBu1YOgKOnJvbZpHW/P8NfX
        XoSm/1rlmDZCgeZclX86ovOqkuN7w1M=
X-Google-Smtp-Source: AKy350Z06oCpm1ZsmMi94MYMYfWx1yahccv8dN+m/QxDIsCe0ATvgdZdXcwgQ/aQ4xrmW4m3oIEb/g==
X-Received: by 2002:a7b:cd07:0:b0:3f1:9489:6deb with SMTP id f7-20020a7bcd07000000b003f194896debmr764892wmj.20.1682070309710;
        Fri, 21 Apr 2023 02:45:09 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id l5-20020a05600c16c500b003f177cda5ebsm7637236wmn.33.2023.04.21.02.45.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 02:45:09 -0700 (PDT)
Message-ID: <d4d75bce-e8f3-756b-fd7e-172f098dcffd@gmail.com>
Date:   Fri, 21 Apr 2023 11:45:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v7 4/8] regex.3: Improve REG_STARTEND
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <8c4487ff-17c6-f4f6-d8cf-59a82d9daeca@gmail.com>
 <sowec336dkzypq6kjouieoyesyfdejmo3j2err3kc4xcpine4l@2takvti7yrem>
 <5918ccbe-d218-df42-cf0f-5eb7b3354e2b@gmail.com>
 <atartvvgxjv7wk5rvdtiyrxjc22lnsgkf75hy3nz3m7fw3m6j4@i7khsjrvuise>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <atartvvgxjv7wk5rvdtiyrxjc22lnsgkf75hy3nz3m7fw3m6j4@i7khsjrvuise>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Dmgv98HTktC8WCAIpu6onTRd"
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Dmgv98HTktC8WCAIpu6onTRd
Content-Type: multipart/mixed; boundary="------------EgdrC0ljKEmfNGrdFrJ4eg3Z";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <d4d75bce-e8f3-756b-fd7e-172f098dcffd@gmail.com>
Subject: Re: [PATCH v7 4/8] regex.3: Improve REG_STARTEND
References: <8c4487ff-17c6-f4f6-d8cf-59a82d9daeca@gmail.com>
 <sowec336dkzypq6kjouieoyesyfdejmo3j2err3kc4xcpine4l@2takvti7yrem>
 <5918ccbe-d218-df42-cf0f-5eb7b3354e2b@gmail.com>
 <atartvvgxjv7wk5rvdtiyrxjc22lnsgkf75hy3nz3m7fw3m6j4@i7khsjrvuise>
In-Reply-To: <atartvvgxjv7wk5rvdtiyrxjc22lnsgkf75hy3nz3m7fw3m6j4@i7khsjrvuise>

--------------EgdrC0ljKEmfNGrdFrJ4eg3Z
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 4/21/23 04:16, =D0=BD=D0=B0=D0=B1 wrote:
> Hi!
>=20
> On Fri, Apr 21, 2023 at 03:42:48AM +0200, Alejandro Colomar wrote:
>> On 4/21/23 02:39, =D0=BD=D0=B0=D0=B1 wrote:
>>> Explicitly spell out the ranges involved. The original wording always=

>>> confused me, but it's actually very sane.
>>>
>>> Remove "this doesn't change R_NOTBOL & R_NEWLINE" =E2=80=92 so does i=
t change
>>> R_NOTEOL? No. That's weird and confusing.
>>>
>>> String largeness doesn't matter, known-lengthness does.
>>>
>>> Explicitly spell out the influence on returned matches
>>> (relative to string, not start of range).
>>>
>>> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczlewel=
i.xyz>
>>
>> Patch applied.
>>
>>> ---
>>> Range-diff against v6:
>>> 1:  4b7971a5e < -:  --------- regex.3: Desoupify regfree() descriptio=
n
>>> 2:  5fb4cc16f ! 1:  ed050649b regex.3: Improve REG_STARTEND
>>>     @@ man3/regex.3: .SS Matching
>>>      -and ending before byte
>>>      -.IR pmatch[0].rm_eo .
>>>      +Match
>>>     -+.RI [ string " + " pmatch[0].rm_so ", " string " + " pmatch[0].=
rm_eo )
>>>     ++.RI [ "string + pmatch[0].rm_so" , " string + pmatch[0].rm_eo" =
)
>>>      +instead of
>>>     -+.RI [ string ", " string " + \fBstrlen\fP(" string )).
>>>     ++.RI [ string , " string + strlen(string)" ).
>>>       This allows matching embedded NUL bytes
>>>       and avoids a
>>>       .BR strlen (3)
>>>     @@ man3/regex.3: .SS Matching
>>>      +as usual, and the match offsets remain relative to
>>>      +.IR string
>>>      +(not
>>>     -+.IR string " + " pmatch[0].rm_so ).
>>>     ++.IR "string + pmatch[0].rm_so" ).
>>>       This flag is a BSD extension, not present in POSIX.
>>>       .SS Match offsets
>>>       Unless
>>>
>>>  man3/regex.3 | 29 ++++++++++++++++-------------
>>>  1 file changed, 16 insertions(+), 13 deletions(-)
>>>
>>> diff --git a/man3/regex.3 b/man3/regex.3
>>> index 46a4a12b9..099c2c17f 100644
>>> --- a/man3/regex.3
>>> +++ b/man3/regex.3
>>> @@ -131,23 +131,26 @@ .SS Matching
>>>  above).
>>>  .TP
>>>  .B REG_STARTEND
>>> -Use
>>> -.I pmatch[0]
>>> -on the input string, starting at byte
>>> -.I pmatch[0].rm_so
>>> -and ending before byte
>>> -.IR pmatch[0].rm_eo .
>>> +Match
>>> +.RI [ "string + pmatch[0].rm_so" , " string + pmatch[0].rm_eo" )
>>> +instead of
>>> +.RI [ string , " string + strlen(string)" ).
>>>  This allows matching embedded NUL bytes
>>>  and avoids a
>>>  .BR strlen (3)
>>> -on large strings.
>>> -It does not use
>>> +on known-length strings.
>>> +If any matches are returned
>>> +.RB ( REG_NOSUB
>>> +wasn't passed to
>>> +.BR regcomp (),
>>> +the match succeeded, and
>>>  .I nmatch
>>> -on input, and does not change
>>> -.B REG_NOTBOL
>>> -or
>>> -.B REG_NEWLINE
>>> -processing.
>>> +> 0), they overwrite
>>> +.I pmatch
>>> +as usual, and the match offsets remain relative to
>>> +.IR string
>>
>> Minor glitch: s/IR/I/
>>
>> I fixed it.  BTW, don't know if you knew, but you can run some linters=

>> to check these accidents by yourself.
>=20
>=20
> $ make check
> # ...
> GREP    .tmp/man/man1/memusage.1.check-catman.touch
> .tmp/man/man1/memusage.1.cat.grep:132:           Memory usage summary: =
heap total: 45200, heap peak: 6440, stack peak: 224
> .tmp/man/man1/memusage.1.cat.grep:135:           realloc|        40    =
     44800             0  (nomove:40, dec:19, free:0)
> make: *** [share/mk/check/catman.mk:36: .tmp/man/man1/memusage.1.check-=
catman.touch] Error 1

That means the line goes beyond the 80-column margin in rendered pages.
There are pages where code examples go beyond that limit, and I can
only live with it :(.  Ideally, that test should pass in every page,
but in some cases it's impossible.

I know the name of the test is horrible.  Feel free to suggest
alternatives.  Maybe something like 'CHECK (80-col)	$@' would do.

>=20
>=20
> $ make lint
> SED     .tmp/man/man2/add_key.2.d/add_key.c
> LINT (checkpatch)       .tmp/man/man2/add_key.2.d/add_key.lint-c.checkp=
atch.touch
> bash: line 1: checkpatch: command not found
> make: *** [share/mk/lint/c.mk:64: .tmp/man/man2/add_key.2.d/add_key.lin=
t-c.checkpatch.touch] Error 127
>=20
> git grep checkpatch first says I want checkpatch(1).
> No such manual exists, at least in Debian.

Nope; that manual page probably only exists in my servers :)

<http://www.alejandro-colomar.es/src/alx/linux/checkpatch.git/>

> Then it reveals I actually want checkpatch.pl from a linux checkout.
> Probably call it [scripts/]checkpatch.pl then?

The thing is I suggested (privately; I hate that I can't
reference to some list archive) the checkpatch.pl maintainers
separating checkpatch.pl to a standalone project that can be
packaged separately, and has a separate git history.  That
way it would be directly useful to many other projects that
follow coding styles similar to the kernel.

I prepared some proof of concept in that repo, but we agreed
that it would be better if the entire git history from the
Linux git history was kept, so I need to learn how to extract
a few files from a git repo with their history (I know how to
do that for a single file or directory, but cherry-picking
files is more complex, and I didn't yet look deep into it).

So I need to do that work before trying to host that repo in
<kernel.org>.

Feel free to check out that repo, but keep in mind that I
will rewrite the entire history when I learn how to do it.

>=20
> Then it reveals
>   CHECKPATCH              :=3D checkpatch

For me it's in

$ which checkpatch
/usr/local/bin/checkpatch

And it's a modified version to be nicer to non-kernel projects.

> which means that just
>   export CHECKPATCH=3D~/store/code/linux/scripts/checkpatch.pl
> doesn't work, and I need to pass it as an argument (should be ?=3D).
> The same for all the other linters.

Yeah; feel free to send patches :)

>=20
> $ make -j25 CHECKPATCH=3D~/store/code/linux/scripts/checkpatch.pl lint
> # ...
> LINT (mandoc)   .tmp/man/man1/pldd.1.lint-man.mandoc.touch
> mandoc: man1/getent.1:6:14: WARNING: cannot parse date, using it verbat=
im: (date)
> # (same what feels like every page; bullseye mandoc 1.14.5-1)

If you only want to run $CHECKPATCH, you can run
`make lint-c-checkpatch`.  For a complete set of targets, see
`make help`.  (I know; I should have told you before, but that
way I learnt some stuff that might have passed inadvertently.)

>=20
> If I pass MANDOC=3D~/code/voreutils/mandoc (recent(ish, it was recent l=
ast
> year) CVS, + some patches I forgot that fixed some egregious formatting=

> errors):
> LINT (mandoc)   .tmp/man/man5/ftpusers.5.lint-man.mandoc.touch
> LINT (mandoc)   .tmp/man/man5/gai.conf.5.lint-man.mandoc.touch
> LINT (mandoc)   .tmp/man/man5/group.5.lint-man.mandoc.touch
> LINT (mandoc)   .tmp/man/man5/host.conf.5.lint-man.mandoc.touch
> mandoc: man5/erofs.5:78:2: ERROR: skipping end of block that is not ope=
n: RE
> mandoc: man5/erofs.5:79:2: WARNING: skipping paragraph macro: IP empty
> mandoc: man5/erofs.5:78:2: WARNING: skipping paragraph macro: br at the=
 end of SS

I see the same errors; feel free to send patches :)

$ make lint check -t
$ touch man5/erofs.5=20
$ make lint check -k
LINT (mandoc)	.tmp/man/man5/erofs.5.lint-man.mandoc.touch
mandoc: man5/erofs.5:78:2: ERROR: skipping end of block that is not open:=
 RE
mandoc: man5/erofs.5:79:2: WARNING: skipping paragraph macro: IP empty
mandoc: man5/erofs.5:78:2: WARNING: skipping paragraph macro: br at the e=
nd of SS
make: *** [share/mk/lint/man.mk:33: .tmp/man/man5/erofs.5.lint-man.mandoc=
=2Etouch] Error 1
LINT (tbl comment)	.tmp/man/man5/erofs.5.lint-man.tbl.touch
make: Target 'lint' not remade because of errors.
PRECONV	.tmp/man/man5/erofs.5.tbl
TBL	.tmp/man/man5/erofs.5.eqn
EQN	.tmp/man/man5/erofs.5.cat.troff
TROFF	.tmp/man/man5/erofs.5.cat.grotty
an.tmac:man5/erofs.5:18: style: use of deprecated macro: .PD
an.tmac:man5/erofs.5:24: style: use of deprecated macro: .PD
an.tmac:man5/erofs.5:50: style: .BR expects at least 2 arguments, got 1
an.tmac:man5/erofs.5:78: style: unbalanced .RE
found style problems; aborting
make: *** [share/mk/build/catman.mk:80: .tmp/man/man5/erofs.5.cat.grotty]=
 Error 1
make: *** Deleting file '.tmp/man/man5/erofs.5.cat.grotty'
make: Target 'check' not remade because of errors.


>=20
> And it passes!

Do you mean that make doesn't recognize the error?

> Those are the only errors I saw, even on the version with
> IR\ string$
>=20
> When I ran with 2>&1 | less to make sure, I got=20
> /etc/bash.bashrc: line 7: PS1: unbound variable

So it seems.

> /etc/bash.bashrc: line 7: PS1: unbound variable
> /etc/bash.bashrc: line 7: PS1: unbound variable
> /etc/bash.bashrc: line 7: PS1: unbound variable
> /etc/bash.bashrc: line 7: PS1: unbound variable
> /etc/bash.bashrc: line 7: PS1: unbound variable
> /etc/bash.bashrc: line 7: PS1: unbound variable
> /etc/bash.bashrc: line 7: PS1: unbound variable
> /etc/bash.bashrc: line 7: PS1: unbound variable
> /etc/bash.bashrc: line 7: PS1: unbound variable
> /etc/bash.bashrc: line 7: PS1: unbound variable
> /etc/bash.bashrc: line 7: PS1: unbound variable
> /etc/bash.bashrc: line 7: PS1: unbound variable
> /etc/bash.bashrc: line 7: PS1: unbound variable
> SED     .tmp/man/man2/add_key.2.d/add_key.c
> SED     .tmp/man/man2/bind.2.d/bind.c
> SED     .tmp/man/man2/chown.2.d/chown.c
> SED     .tmp/man/man2/clock_getres.2.d/clock_getres.c
> SED     .tmp/man/man2/clone.2.d/clone.c
> SED     .tmp/man/man2/close_range.2.d/close_range.c
> SED     .tmp/man/man2/copy_file_range.2.d/copy_file_range.c
> SED     .tmp/man/man2/eventfd.2.d/eventfd.c
> and indeed
> Makefile:SHELL :=3D /usr/bin/env bash -Eeuo pipefail
> and
> $ sed -n 6,7p /etc/bash.bashrc
> # If not running interactively, don't do anything
> [ -z "$PS1" ] && return

I have the same bashrc (Debian Sid here), and have this same
line.  Why is it failing only for you?  Maybe I modified
something in my startup scripts?  Maybe you did?

>=20
> (That should be ${PS1-}. What's even funnier is that

Should we call debbugs?  :)

>  $ sed -n 14p /etc/bash.bashrc
>  if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then)

Huh!

>=20
>=20
> $ make -j25 CHECKPATCH=3D~/store/code/linux/scripts/checkpatch.pl lint =
MANDOC=3D: CLANG-TIDY=3D:
> LINT (checkpatch)       .tmp/man/man3/_Generic.3.d/_Generic.lint-c.chec=
kpatch.touch
> ERROR:ASSIGN_IN_IF: do not use assignment in if condition
> #17: FILE: .tmp/man/man3const/EXIT_SUCCESS.3const.d/EXIT_SUCCESS.c:17:
> +    if ((fp =3D fopen(argv[1], "r")) =3D=3D NULL) {
>=20
> Do not use assignments in if condition.
> Example::
>=20
>   if ((foo =3D bar(...)) < BAZ) {
>=20
> should be written as::
>=20
>   foo =3D bar(...);
>   if (foo < BAZ) {
>=20
> total: 1 errors, 0 warnings, 0 checks, 29 lines checked
> make: *** [share/mk/lint/c.mk:64: .tmp/man/man3const/EXIT_SUCCESS.3cons=
t.d/EXIT_SUCCESS.lint-c.checkpatch.touch] Error 1
> make: *** Waiting for unfinished jobs....

Hmmm, yes, I see that same error; this page is recent, so I
probably never run the linters on it yet.  :/

Thanks for the catch!  Fixed.

> CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #17: FILE: .tmp/man/man3/dl_iterate_phdr.3.d/dl_iterate_phdr.c:17:
> +    printf("Name: \"%s\" (%d segments)\n", info->dlpi_name,
> +               info->dlpi_phnum);

This page has so many warnings, that I probably missed these
valid ones.  Alignment seems performed by a schoolchild that
can't follow lines while painting :p.  Fixed.

>=20
> CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #33: FILE: .tmp/man/man3/dl_iterate_phdr.3.d/dl_iterate_phdr.c:33:
> +        printf("    %2zu: [%14p; memsz:%7jx] flags: %#jx; ", j,
> +                (void *) (info->dlpi_addr + info->dlpi_phdr[j].p_vaddr=
),
>=20
> total: 0 errors, 0 warnings, 2 checks, 54 lines checked
> make: *** [share/mk/lint/c.mk:63: .tmp/man/man3/dl_iterate_phdr.3.d/dl_=
iterate_phdr.lint-c.checkpatch.touch] Error 1
> WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to usi=
ng 'closeSocketPair', this function's name, in a string
> #230: FILE: .tmp/man/man2/seccomp_unotify.2.d/seccomp_unotify.c:230:
> +        err(EXIT_FAILURE, "closeSocketPair-close-0");
>=20
> Embedded function names are less appropriate to use as
> refactoring can cause function renaming.  Prefer the use of
> "%s", __func__ to embedded function names.
>=20
> Note that this does not work with -f (--file) checkpatch option
> as it depends on patch context providing the function name.
>=20
> WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to usi=
ng 'closeSocketPair', this function's name, in a string
> #232: FILE: .tmp/man/man2/seccomp_unotify.2.d/seccomp_unotify.c:232:
> +        err(EXIT_FAILURE, "closeSocketPair-close-1");

I've seen this one, and thought of fixing it, but I'm not
yet sure how to do it so that the page is consistent with
itself.  So far I've not done anything.

>=20
> total: 0 errors, 2 warnings, 0 checks, 612 lines checked
> make: *** [share/mk/lint/c.mk:63: .tmp/man/man2/seccomp_unotify.2.d/sec=
comp_unotify.lint-c.checkpatch.touch] Error 1
>=20
> (more pages)
>=20
>=20
> I'm not sure I agree with the ASSIGN_IN_IF case,

I do agree with it; it's just that I don't run these often;
especially some linters that have many warnings in current
pages, I tend to ignore them.  But they're still useful
sometimes.

> but I'm assuming
> there's a mechanism to kill the lints you don't are about;
> linux cdc9718d5e590d6905361800b938b93f2b66818e.

I disable the lints in the Makefile, so whatever you see is
probably because it's a wanted warning, or because the
linter recently added it.  However, fixing all pages would
be impossible :(.

>=20
>=20
> This continues until I've disabled every linter.
> I'm assuming you have specific versions that work for you,
> but, well.

No; I do see a lot of noise too.  The thing is it's still
useful for linting specific pages:

    $ make lint check -t >/dev/null  # ignore everything
    $ make lint check -W man5/erofs.5  # lint only that page

Cheers,
Alex

>=20
>=20
> Best,
> =D0=BD=D0=B0=D0=B1

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------EgdrC0ljKEmfNGrdFrJ4eg3Z--

--------------Dmgv98HTktC8WCAIpu6onTRd
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRCWyMACgkQnowa+77/
2zJAaQ//a0B0DdhAX0ZXAQDWFvCc9eYILd74VOpyq+ZRBKV1Z/biN/+skXtQDc9T
yBja7UWysGhMWG0xUp3y6MsUIBDHVQcaL+8/9X9mJG66c/hVJWO7TL/6PTHEimg2
ocGqlat17SIU27OPjik5lfyPlgwhOpx7AiAv0W5EVK0hu2+qdwyt/23Srsw3V+Eh
OKL500CzpTQZCiVaDeVcXvK3+EySa0yhNSLszMvZwYlBcGgvatL6Ieoe55+uFaj2
bhESpilB6MwbJL2U5nblVS/RhgjmRfcw4mdgNn0DKLadmMIZcZF0xsAvAMNaEFXd
hlJs3uGJKof4o/u2el9EJ1YR+4C0x4AGTtjK+kMGW5wi6hT/PI+WU8gbTIXHOX0Y
iMxsFOEYhL9ns7aCiHxjYQ28FqpKeUqVhJTBVQwHPyB8I4zslbbBOMZWfF1v8AeO
obcFxpidq+puhZLHVCPFbzp4T43sFLU+Q6DDdXjqhapyw1NZSNiYD+qQhAvEtOw4
58EcG5yEmck8Ym/XoyZena98XrYiMkYB+jmHn/KhtKLANsroh/rgFPs6AjLoWU0R
RlEJHjkQxeJtRfXiQsB6jL1j0AR/mqF4K4X1QjmL/nx4N1tfo1OnboA5IiHvaJzt
Myj02RVtQRbhB45fJqhVLVXYKiuMkscteenvWd6p893s3vsSKr0=
=pK3p
-----END PGP SIGNATURE-----

--------------Dmgv98HTktC8WCAIpu6onTRd--
