Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5C6D6DBB0D
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 15:03:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229680AbjDHNDN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Apr 2023 09:03:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229456AbjDHNDN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Apr 2023 09:03:13 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2701F5B82
        for <linux-man@vger.kernel.org>; Sat,  8 Apr 2023 06:03:11 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id q5so632994wmo.4
        for <linux-man@vger.kernel.org>; Sat, 08 Apr 2023 06:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680958989; x=1683550989;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BLSRpoak7/Z+NPyYm9MH77gQyynm/8TKr6aMXSlP0i4=;
        b=oMX9wWWv/968+oNof3ej/YeIMPT3tAvzgOOYgVYT95ANQm/F1kwHibxUjFZUjLCPlA
         V73Iis4z130apoSrosz92d5ghx0jCDtUAuEbtCIgtnKOZRregtoNyhtF6SCR8wjHxamM
         WeaTJV0Gp5HMN4qm23x8cakWj8a8RTUihmZKy8lS0znxUfK7sIiSeDzpLhDvP7F9Hmtw
         pt1pMEVQqSJHsMPBvzobKjfh2fCDCInN0Br2baOPTbNs3bI+Byz8hxK/fMS8vGV4bZWY
         QA6sLkaT6jW55FYdTXgH097s1vtYXu1yrFnkjwNMEEaTxicW9ozsZgzFtw2/ygyw0FCb
         o41w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680958989; x=1683550989;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BLSRpoak7/Z+NPyYm9MH77gQyynm/8TKr6aMXSlP0i4=;
        b=dCR24PMenvs/YT8J4oJ7Qk+mBGkaeYV8ZPH2lfmkCpVqSRV+SH5fJ/fuR1cL/ikDG0
         bZnlPGt0c4Cp1juPuJLWg6Zog0UtiQKp6oqUGDEsZb7EmGavhop7GZNkMxhsIS3rE+S5
         P/FQFkw+TKvynjps1bxErQJ1AJeXzRnndT6ybz/XJM2DO6Pe6+xfZuiQ2AK8mld4GeXr
         UIHkw4zjQ3UVgljeQYOTRmAtsMycBJ1yr3zq7f4f+moDDlQyj0G0XtzMTRgfSpVHgwbu
         HLv/59hscff3Gn0zpVPaNCX343eHt2pEIGGJw7M8Iab7N7/iHX028QqTyDQG4mTM6ZAk
         FGhg==
X-Gm-Message-State: AAQBX9cOcL9uADuDPeg9DPKJJpGoM8sVKcL3PIK+G2VP83mZRkjEVy7b
        QJk4IYdaLvaNgtej7il4w1k=
X-Google-Smtp-Source: AKy350bFxOUiZePAMdEtN4yYZl/IqPsqtO33NxitLjAWuD0J4QtRjGOIQMTpQnjMsRo1tp7CdA2nbQ==
X-Received: by 2002:a7b:c354:0:b0:3ed:301c:375c with SMTP id l20-20020a7bc354000000b003ed301c375cmr1290563wmj.21.1680958989179;
        Sat, 08 Apr 2023 06:03:09 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id u20-20020a7bc054000000b003eb596cbc54sm7922457wmc.0.2023.04.08.06.03.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Apr 2023 06:03:08 -0700 (PDT)
Message-ID: <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com>
Date:   Sat, 8 Apr 2023 15:02:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Accessibility of man pages (was: Playground pager lsp(1))
To:     Eli Zaretskii <eliz@gnu.org>, cjwatson@debian.org
Cc:     dirk@gouders.net, linux-man@vger.kernel.org, help-texinfo@gnu.org,
        nabijaczleweli@nabijaczleweli.xyz, g.branden.robinson@gmail.com,
        groff@gnu.org
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> <837cumonv9.fsf@gnu.org>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <837cumonv9.fsf@gnu.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------sD0ZvDYs7Ue07J9sU0vZ0j0B"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------sD0ZvDYs7Ue07J9sU0vZ0j0B
Content-Type: multipart/mixed; boundary="------------mvaNar9UlNeqoFGnmsKVGSSg";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Eli Zaretskii <eliz@gnu.org>, cjwatson@debian.org
Cc: dirk@gouders.net, linux-man@vger.kernel.org, help-texinfo@gnu.org,
 nabijaczleweli@nabijaczleweli.xyz, g.branden.robinson@gmail.com,
 groff@gnu.org
Message-ID: <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com>
Subject: Accessibility of man pages (was: Playground pager lsp(1))
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> <837cumonv9.fsf@gnu.org>
In-Reply-To: <837cumonv9.fsf@gnu.org>

--------------mvaNar9UlNeqoFGnmsKVGSSg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Eli, Colin,

On 4/8/23 09:05, Eli Zaretskii wrote:
>> Date: Sat, 8 Apr 2023 00:01:08 +0200
>> Cc: dirk@gouders.net, linux-man@vger.kernel.org, help-texinfo@gnu.org,=

>>  =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijaczleweli.xyz>,
>>  "G. Branden Robinson" <g.branden.robinson@gmail.com>, groff <groff@gn=
u.org>,
>>  Colin Watson <cjwatson@debian.org>
>> From: Alejandro Colomar <alx.manpages@gmail.com>
>>
>>> How do you find the description of, say, "dereference symbolic link"
>>> (to take just a random example from the Emacs manual) when the actual=

>>> text of the manual include neither this string nor matches for any
>>> related regular expressions, like "dereference.*link"?
>>
>> $ apropos link | grep sym | head -n5
>> readlink (2)         - read value of a symbolic link
>> readlinkat (2)       - read value of a symbolic link
>> sln (8)              - create symbolic links
>> symlink (2)          - make a new name for a file
>> symlink (7)          - symbolic link handling
>>
>> I bet you're looking for readlink(2) and symlink(7), aren't you?
>=20
> I said "in the Emacs manual",

I wanted to show the man-pages equivalent.  Of course I know nothing
about the Emacs manual :)

> and I said "when the actual text of the
> manual doesn't include the phrase you are looking for".  So your
> example is not really up to its job: it uses text that is not the
> Emacs manual, and it finds only hits that literally appear in the
> title text of the man pages.

I thought you wanted to know about how dereferencing symlinks works
in general.

>  For example, the above doesn't find the
> man page of Find,

If you want how symlinks are dereferenced by find(1):

$ man find | grep sym.*link | head -n1
       The  -H,  -L  and  -P  options control the treatment of symbolic l=
inks.

$ man find | sed -n '/^       -L/,/^$/p;' | sed '/^$/,$d'
       -L     Follow symbolic links.  When find examines or prints inform=
ation
              about  files, the information used shall be taken from the =
prop=E2=80=90
              erties of the file to which the link points, not from  the =
 link
              itself (unless it is a broken symbolic link or find is unab=
le to
              examine  the file to which the link points).  Use of this o=
ption
              implies -noleaf.  If you later use the -P option,  -noleaf =
 will
              still  be  in  effect.   If -L is in effect and find discov=
ers a
              symbolic link to a subdirectory during its search, the subd=
irec=E2=80=90
              tory pointed to by the symbolic link will be searched.

$ man find | sed -n '/^       -H/,/^$/p;' | sed '/^$/,$d'
       -H     Do not follow symbolic links, except while processing  the =
 com=E2=80=90
              mand  line  arguments.  When find examines or prints inform=
ation
              about files, the information used shall be taken from the  =
prop=E2=80=90
              erties  of the symbolic link itself.  The only exception to=
 this
              behaviour is when a file specified on the command line is a=
 sym=E2=80=90
              bolic link, and the link can be resolved.  For  that  situa=
tion,
              the  information  used is taken from whatever the link poin=
ts to
              (that is, the link is followed).  The information about the=
 link
              itself is used as a fallback if the file pointed to by the =
 sym=E2=80=90
              bolic  link  cannot  be examined.  If -H is in effect and o=
ne of
              the paths specified on the command line is a symbolic link =
to  a
              directory,  the  contents  of  that  directory  will be exa=
mined
              (though of course -maxdepth 0 would prevent this).

$ man find | sed -n '/^       -P/,/^$/p;' | sed '/^$/,$d'
       -P     Never follow symbolic links.  This  is  the  default  behav=
iour.
              When  find  examines  or prints information about files, an=
d the
              file is a symbolic link, the information  used  shall  be  =
taken
              from the properties of the symbolic link itself.

> nor the man pages of cp

If you want to know how symlinks are handled by cp(1), then:

$ man cp | grep sym.*link -B1

       -H     follow command-line symbolic links in SOURCE
--
       -L, --dereference
              always follow symbolic links in SOURCE
--
       -P, --no-dereference
              never follow symbolic links in SOURCE
--

       -s, --symbolic-link
              make symbolic links instead of copying

> and ls (and quite a few of

And similarly for ls(1):

$ man ls | grep sym.*link -C2

       -H, --dereference-command-line
              follow symbolic links listed on the command line

       --dereference-command-line-symlink-to-dir
              follow each command line symbolic link that points to  a  d=
irec=E2=80=90
              tory

--

       -L, --dereference
              when showing file information for a symbolic link, show inf=
orma=E2=80=90
              tion  for  the file the link references rather than for the=
 link
              itself


> others), all of which discuss what these utilities do with symbolic
> links.

If you want to know how other command handles symlinks, look at that
command's page, and try a few things with grep and sed.

>  By contrast, the Info manual of Coreutils has almost 40 index
> entries starting with "symbolic link", and they are all shown when the
> user types "i symbolic link TAB" ('i' being the letter that invokes
> index-searching command).
>=20
>> diff --git a/man5/proc.5 b/man5/proc.5
>> index 521402fe8..233cc1c9d 100644
>> --- a/man5/proc.5
>> +++ b/man5/proc.5
>> @@ -36,7 +36,7 @@
>>  .\"
>>  .TH proc 5 (date) "Linux man-pages (unreleased)"
>>  .SH NAME
>> -proc \- process information pseudo-filesystem
>> +proc \- process information, system information, and sysctl pseudo-fi=
lesystem
>>  .SH DESCRIPTION
>>  The
>>  .B proc
>>
>>
>> After this patch, if you apropos "system" or "sysctl", you'll see
>> proc(5) pop up in your list.
>=20
> This literally adds the text to what the reader will see.  It makes
> the text longer and thus more difficult to read and parse, and there's
> a limit to how many key phrases you can add like this.

If a page has too many topics, consider splitting the page (I agree
that proc(5) is asking for that job).

>  By contrast,
> Texinfo lets you add any number of index entries that point to the
> same text.  A random example from the Emacs manual:
>=20
>   @cindex arrow keys
>   @cindex moving point
>   @cindex movement
>   @cindex cursor motion
>   @cindex moving the cursor

Using consistent language across pages helps for these things.

>     To do more than insert characters, you have to know how to move
>   point (@pxref{Point}).  The keyboard commands @kbd{C-f}, @kbd{C-b},
>   @kbd{C-n}, and @kbd{C-p} move point to the right, left, down, and up,=

>   respectively.  You can also move point using the @dfn{arrow keys}
>   present on most keyboards: @key{RIGHT}, @key{LEFT},
>   @key{DOWN}, and @key{UP}; however, many Emacs users find
>   that it is slower to use the arrow keys than the control keys, becaus=
e
>   you need to move your hand to the area of the keyboard where those
>   keys are located.
>=20
> This paragraph has 5 index entries with different key phrases, all
> pointing to it.  Different people will have different phrases in their
> minds when they think about "cursor movement", thus the need for
> several entries.  One of the phrases appears in the text literally,
> the other don't; moreover, one of them, "movement" is a very frequent
> word, so searching for it with Grep is likely to bring a lot of false
> hits, whereas index-searching commands will not.
>=20
>>> The corresponding index-searching commands of Info readers are a
>>> primary means for finding information quickly and efficiently,
>>> avoiding too many false positives and also avoiding frustrating
>>> misses, i.e., searches that fail to find anything pertinent.
>>
>> That's no different than apropos(1).
>=20
> See above: it is very different.
>=20
>>>>> Man pages have no means of specifying structure
>>>>
>>>> .SH, .SS, .TP, .TQ, and very soon (hopefully weeks not months) .MR
>>>
>>> These provide just one level.
>>
>> We have many levels:
>>
>> book:		/opt/local/foobar/man/
>> volume:		man2/, man3/, ...
>> chapter:	man3/, man3type/, ...
>> page:		sscanf(3)
>> section:	sscanf(3)/DESCRIPTION
>> subsection:	sscanf(3)/DESCRIPTION/Conversions
>> tags:		sscanf(3)/DESCRIPTION/Conversions/n
>=20
> Texinfo has:
>=20
>   - chapters
>   - sections
>   - subsections
>   - subsubsections
>   - unnumbered variants of the above (unnumberedsubsec etc.)
>   - appendices (appendix, appendixsubsec etc.)
>   - headings (majorheading, chapheading, subheading, etc.)
>=20
> More importantly, all those have meaningful names, not just standard
> labels like "DESCRIPTION" or "Conversions".

"Conversions" is not a standard subsection.  It's about conversion
specifiers; something exclusive of sscanf(3).  However, sections and
above do be standardized, and I believe that's good, so that you can
have some a-priori expectations of the organization of a page.

>  So when you see them in
> TOC or any similar navigation aid, you _know_, at least approximately,
> what each section is about.

I know a priori that if I'm reading sscanf(3)'s SYNOPSIS, I'll find
the function prototype for it.  Or if I read printf(3)'s ATTRIBUTES
I'll find the thread-safety of the function.  So much, that I have
functions for reading a specific section of a certain page:


$ man_section man3/sscanf.3 SYNOPSIS
sscanf(3)               Library Functions Manual               sscanf(3)

SYNOPSIS
       #include <stdio.h>

       int sscanf(const char *restrict str,
                  const char *restrict format, ...);

       #include <stdarg.h>

       int vsscanf(const char *restrict str,
                  const char *restrict format, va_list ap);

   Feature    Test    Macro    Requirements    for   glibc   (see   fea=E2=
=80=90
   ture_test_macros(7)):

       vsscanf():
           _ISOC99_SOURCE || _POSIX_C_SOURCE >=3D 200112L

Linux man=E2=80=90pages (unreleased)     (date)                        ss=
canf(3)



$ man_section man3/printf.3 ATTRIBUTES
printf(3)               Library Functions Manual               printf(3)

ATTRIBUTES
       For an explanation of the terms used in this section, see attrib=E2=
=80=90
       utes(7).
       =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=AC=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=AC=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90
       =E2=94=82 Interface                    =E2=94=82 Attribute     =E2=
=94=82 Value          =E2=94=82
       =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=BC=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=BC=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4
       =E2=94=82 printf(), fprintf(),         =E2=94=82 Thread safety =E2=
=94=82 MT=E2=80=90Safe locale =E2=94=82
       =E2=94=82 sprintf(), snprintf(),       =E2=94=82               =E2=
=94=82                =E2=94=82
       =E2=94=82 vprintf(), vfprintf(),       =E2=94=82               =E2=
=94=82                =E2=94=82
       =E2=94=82 vsprintf(), vsnprintf()      =E2=94=82               =E2=
=94=82                =E2=94=82
       =E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=98


Linux man=E2=80=90pages (unreleased)     (date)                        pr=
intf(3)


>=20
>>>>> and hyper-links except
>>>>> by loosely-coupling pages via "SEE ALSO" cross-references at the en=
d;
>>>>> they have no means of quickly and efficiently finding some specific=

>>>>> subject except by text search (which usually produces a lot of fals=
e
>>>>> positives).

text search has false positives, like anything else.  But having good
tools for handling text is the key to solving the problem.  grep(1)
and sed(1) are your friends when reading man pages.

Colin, I've had a feeling for a long time that compressed pages are
not very useful.  These days, storage is cheap.  How would you feel
about having the man pages installed uncompressed in Debian?  That
would allow running text tools directly in /usr/share/man/.  I've had
to do that several times, and lucky me that I have the source code of
the Linux man-pages checked out in my computers, but other users don't
and they might have trouble finding for example which pages talk about
RLIMIT_NOFILE.  The only way I know of is:

$ grep -rl RLIMIT_NOFILE man*
man2/dup.2
man2/pidfd_getfd.2
man2/open.2
man2/fcntl.2
man2/poll.2
man2/pidfd_open.2
man2/getrlimit.2
man2/select.2
man2/seccomp_unotify.2
man3/getdtablesize.3
man3/mq_open.3
man3/errno.3
man3/sysconf.3
man5/proc.5
man7/unix.7
man7/fanotify.7
man7/capabilities.7


I'd like to enable this ability for everyone by not compressing
system man pages.  I guess we should talk to the Debian policy
mailing list?


Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------mvaNar9UlNeqoFGnmsKVGSSg--

--------------sD0ZvDYs7Ue07J9sU0vZ0j0B
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQxZgQACgkQnowa+77/
2zKPChAAheIeYSaA0XDrPiRd4LXqicEO/iWdR2Xniy2ttkdQiyYj9r50+mLdkNPO
SyQMxVAK5EDH1ZzQsB+4wE55eOyY36iDnuXV0Yjc/7bA3sT6AZfaivBSTpGXdT/d
QmUYPq9PuvLXq4F4qxuwVpxnYhUntXeijcuroZl30Xk5zESV/qsRVqfa8DM+50a4
4S+RfHllwO/4UhLxjPqPng2I316Xh3xhTR63DYJWJ0rBnsI3bfcTSQomtuTeW57y
gN8jN6ncfV2OTOsmrVtpcemC7EEwP1fc62AQl5+ye5Aly2KQ+I1Lofa8UqQnrdHJ
h83yULCp5U3nhPnbsAX6/7DnAS17LOLrY6WR/KY/Wos7NePvVAylP09LMWrBb3RJ
+P3zBADowWOfrTBQR6100gyeWmnF95OCROcKfhuu5QRiWCOla7rS+GVbfmFkCG1A
dPAeoj9tm4kLOTjeOPVI5W6/Bb0JStJV1VWkQcBiCmHTbcDKhhcN8y4MCB7aY1zg
IRld9srtUAKkFmc7/iyHe76Eil8m57MYAqEu8/v+PLmAlSoMrQdEW493PCdZRITY
XPymEkv6G2Q09sgPv/RxKFsVJG84O0kcg464weievC2mtAbUvxAI8PGIWq0hR/PO
tZQkTSqogtaj+7Uh1J2SJGxNvdABIJkjXDQtDJ+/2Yed99FxlfU=
=5h0A
-----END PGP SIGNATURE-----

--------------sD0ZvDYs7Ue07J9sU0vZ0j0B--
