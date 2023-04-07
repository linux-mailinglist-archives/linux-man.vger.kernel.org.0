Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A2756DB648
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 00:01:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231611AbjDGWBh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Apr 2023 18:01:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229800AbjDGWBf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Apr 2023 18:01:35 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AEC67ED0
        for <linux-man@vger.kernel.org>; Fri,  7 Apr 2023 15:01:30 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id g5so3306789wrb.5
        for <linux-man@vger.kernel.org>; Fri, 07 Apr 2023 15:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680904888; x=1683496888;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qlAoXUI/QaLGvKWebG5SdUz9xUxB/s4jtPi4gGaFgPs=;
        b=NPdY/4Lia7B+8Jm3mtMqwM2TEw2x8hkOTlJGhvP00CzlEJKhvEQjYuv1rkWXHj/ZzS
         kDSdIJ12PdvktdS0Z0V4bUjYzv4GcGTdxEgYuO8Htw/ChyN/lqu+Fo8EZu1ySjJoAsLG
         8eXBTeXSisj8fjW/myTzoMXTbr90u35gWNNoXfRVw5LRXKXr+vrPICEHjasjyNUEGXCD
         gKMMS2hElVdQdkl5m/ofx8vJEzhn3GDOpkpvyxlXZDWkPne+QdIbYySpfY1b22X7vQz4
         BMxeb4Qf6N39vi2CXfmY8szRnuYhQtRQk9Vf4ZTkTDiakz/5GBInKquzpzF0Hc6CSzQp
         RohA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680904888; x=1683496888;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qlAoXUI/QaLGvKWebG5SdUz9xUxB/s4jtPi4gGaFgPs=;
        b=fyDlFJxDZc9ZUG9Qx9Nhg4fo+VgbMY3l9Rx9gJAcenSf/M/YApvd+z9s0IqG/XOAIY
         42rxES17ABp4OYjRBao2WuPBB1NAZG2PhF0gO31OEfzLdsuMytWAAgKiOZBphyFVUG97
         lmr9Jb2XX3D2SPROXGwURu5UNpNXTorblPN2aNutMAPvwG7hIH4AKBtWTofRbFoHEXBq
         2PAlRewE2gputdAKojKy/1QPgE4mWz8awmq+Syf5vTox6sAKB2QCaJ95Z92yAoaKjErH
         Vy3QkyuHHb9ayhRSQP/NJVis3O27E8EB0pa2Mzl2a35sML77MMcxQmUV840DZs4ZhZfA
         iJmA==
X-Gm-Message-State: AAQBX9etY7KQw6oqeKcLrJV1uzkCQ++qah9ZZMRhpsBobWNyPTKlxRt3
        4HOiqZvAG9FUQk5KYeE9Sww=
X-Google-Smtp-Source: AKy350ZlrQ1S12lCV4Zf/gwx8bpi89osIzprkfX09ob3zIdRk+VngRpY5BjcP82k9g276JiPMqIUFQ==
X-Received: by 2002:adf:f848:0:b0:2d9:457a:1069 with SMTP id d8-20020adff848000000b002d9457a1069mr2572827wrq.37.1680904888202;
        Fri, 07 Apr 2023 15:01:28 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id q8-20020a1ce908000000b003ed2276cd0dsm5836070wmc.38.2023.04.07.15.01.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Apr 2023 15:01:27 -0700 (PDT)
Message-ID: <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com>
Date:   Sat, 8 Apr 2023 00:01:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: Playground pager lsp(1)
Content-Language: en-US
To:     Eli Zaretskii <eliz@gnu.org>
Cc:     dirk@gouders.net, linux-man@vger.kernel.org, help-texinfo@gnu.org,
        =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        groff <groff@gnu.org>, Colin Watson <cjwatson@debian.org>
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <83sfddqvk3.fsf@gnu.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------zlaAqFKz0llpuUwVyklR9PXP"
X-Spam-Status: No, score=-2.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------zlaAqFKz0llpuUwVyklR9PXP
Content-Type: multipart/mixed; boundary="------------13DFpViJVXJh0SzM6qB0sU67";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Eli Zaretskii <eliz@gnu.org>
Cc: dirk@gouders.net, linux-man@vger.kernel.org, help-texinfo@gnu.org,
 =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>, groff <groff@gnu.org>,
 Colin Watson <cjwatson@debian.org>
Message-ID: <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com>
Subject: Re: Playground pager lsp(1)
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org>
In-Reply-To: <83sfddqvk3.fsf@gnu.org>

--------------13DFpViJVXJh0SzM6qB0sU67
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Eli,

On 4/6/23 10:11, Eli Zaretskii wrote:
>> Date: Thu, 6 Apr 2023 03:10:59 +0200
>> Cc: dirk@gouders.net, linux-man@vger.kernel.org, help-texinfo@gnu.org
>> From: Alejandro Colomar <alx.manpages@gmail.com>
>>
>>> This last sentence is a misunderstanding.  The goal of Texinfo is not=

>>> to improve the man pages.  Texinfo is a completely different approach=

>>> to software documentation, which allows to write large books and then=

>>> produce various on-line and off-line formats to read and efficiently
>>> search those books.
>>
>> "The manual was intended to be typeset; some detail is sacrificed on
>> terminals." (man(1), _Unix Time-Sharing System Programmer's Manual_,
>> Eighth Edition, Volume 1, February 1985)
>>
>> You mean books like this one?  Courtesy of groff(1)'s Deri James =3D)
>> <https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/book/man-pag=
es-6.04.01.pdf>
>>
>> Or maybe you prefer HTML?
>> <https://man7.org/linux/man-pages/man1/intro.1.html>
>=20
> No, I mean books like "GNU Emacs Manual" or "Debugging with GDB"
> (https://shop.fsf.org/collection/books-docs).  Or "War and Peace", for
> that matter.
>=20
>> As to efficiency, I'm not going to open that melon, because we're
>> both very biased to be efficient on the formats we each maintain.
>> I'll just say that I don't see an objective winner in those terms.
>=20
> How do you find the description of, say, "dereference symbolic link"
> (to take just a random example from the Emacs manual) when the actual
> text of the manual include neither this string nor matches for any
> related regular expressions, like "dereference.*link"?

$ apropos link | grep sym | head -n5
readlink (2)         - read value of a symbolic link
readlinkat (2)       - read value of a symbolic link
sln (8)              - create symbolic links
symlink (2)          - make a new name for a file
symlink (7)          - symbolic link handling

I bet you're looking for readlink(2) and symlink(7), aren't you?

>=20
> The way Info does it is to use the index (which should be present in
> any respectable reference document) to find description of the
> corresponding subject.  The indexing, which is done by the author of
> the document, if it's a good indexing, should include index entries
> that specify subjects the reader could have in mind when he/she is
> looking for this kind of information.

We do that too in man(7).  For example, we improved the "index" for
proc(5) recently, after =D0=BD=D0=B0=D0=B1 lost some time without finding=
 proc(5)
in the list of pages that were interesting for the topic at hand:


commit 2e1c1a57f138eedd35b7b2a825002fddb12d240f
Author: =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijaczleweli.xyz>
Date:   Sat Apr 1 00:04:52 2023 +0200

    proc.5: NAME: Add "system information, and sysctl"
   =20
    procfs hosts a whole host of information about the system, as well as=

    sysctls; proc(5) hosts a description of a lot of sysctls, and at pres=
ent
    there's no way to find that out.
   =20
    Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczlewel=
i.xyz>
    Cc: Jakub Wilk <jwilk@jwilk.net>
    Signed-off-by: Alejandro Colomar <alx@kernel.org>

diff --git a/man5/proc.5 b/man5/proc.5
index 521402fe8..233cc1c9d 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -36,7 +36,7 @@
 .\"
 .TH proc 5 (date) "Linux man-pages (unreleased)"
 .SH NAME
-proc \- process information pseudo-filesystem
+proc \- process information, system information, and sysctl pseudo-files=
ystem
 .SH DESCRIPTION
 The
 .B proc


After this patch, if you apropos "system" or "sysctl", you'll see
proc(5) pop up in your list.

>=20
> The corresponding index-searching commands of Info readers are a
> primary means for finding information quickly and efficiently,
> avoiding too many false positives and also avoiding frustrating
> misses, i.e., searches that fail to find anything pertinent.

That's no different than apropos(1).  The only problem is when a
man page feels like a one-page book.  But if you split the book
into several pages, then the index is useful to know which page
you want.

>=20
> So this is not about objectivity, this is about features that either
> are present in the documentation system or are absent.  I prefer the
> Info format to the HTML format of the same manual for this single
> reason: HTML browsers don't have the index searching capabilities
> (this is hopefully about to change, I hope, see the JS support in
> latest Texinfo), and that issue alone was enough to avert me from
> HTML, because I cannot afford wasting time on looking up information I
> cannot find instantly.

Yep, I also prefer man(1) over HTML man pages for similar reasons :).
I can do whatis(1) and apropos(1) (although some man-pages websites
have this capability too, but then I can't grep those results in the
browser).

>=20
>> About variety of output formats, anything that can be produced by
>> groff(1), man(7) can be translated.  And groff(1) can do many formats.=

>=20
> Groff (and any other typesetting program) can be used for writing any
> kind of documents.  I'm not talking about the processors, I'm talking
> about the design of the documentation system as a whole and about what
> the products actually look like.  IOW, I'm talking about the man pages
> produced by the typesetter, not about what can be done with the
> typesetter.
>=20
>>> Man pages have no means of specifying structure
>>
>> .SH, .SS, .TP, .TQ, and very soon (hopefully weeks not months) .MR
>=20
> These provide just one level.

We have many levels:

book:		/opt/local/foobar/man/
volume:		man2/, man3/, ...
chapter:	man3/, man3type/, ...
page:		sscanf(3)
section:	sscanf(3)/DESCRIPTION
subsection:	sscanf(3)/DESCRIPTION/Conversions
tags:		sscanf(3)/DESCRIPTION/Conversions/n

Branden, I now remember your wondering about MR and linking to
specific locations in a page...  Maybe we could use such a URI-like
syntax for that.  I guess it's not yet taken by any software, so we
should be free to define paths in the 'man:' schema to mean this?

>=20
> And how frequently are they used in actual man pages out there, even
> when available?

Used in source man(7)?  Always.

>=20
>> Those can be used to produce very precise links such as this one
>> (one of my favourite references when reviewing man-pages patches):
>> <https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/book/man-pag=
es-6.04.01.pdf#pdf%3Abm11886>
>=20
> It's full of mojibake when I try reading it here.  But anyway: what
> structure do you have there?  It looks just a long sequence of
> separate man pages.

There's a navigation panel in the left in most (all?) PDF readers.
You can use that to navigate to the page you want, and get hyperlinks
to pages or their contents.

>=20
>>> and hyper-links except
>>> by loosely-coupling pages via "SEE ALSO" cross-references at the end;=

>>> they have no means of quickly and efficiently finding some specific
>>> subject except by text search (which usually produces a lot of false
>>> positives).
>>
>> I guess you mean searching from the command line by the name of the
>> parameter to a function, or what?
>=20
> No, I mean looking a specific subject of interest without having to
> search/read through the entire document.

See symlink above.

>=20
>> I would be interested in a more detailed description of what you
>> want to be able to search in current pages (hopefully ones that I
>> maintain, so I can speak of them) that you can't find easily?  Maybe
>> I can help making something more accessible.
>=20
> See above, the example of using index-searching commands.

Yep.  I hope my answer about symlinks satisfied you.

Cheers,
Alex

>=20
>>> By contrast, Texinfo documents have sectioning structure, have
>>> cross-references that can appear where you need them and point
>>> anywhere else in the document (or into another document).
>>
>> This was discussed as a possible extension to '.MR'.  We're just not
>> sure that there's a real need for that in manual pages (although
>> there's not a consensus on that regard, and Branden, which I'm sure
>> is reading this, may jump in at any moment :).
>=20
> Cannot say about man pages, but in a serious documentation of any
> computer software you always need cross-references, because you cannot
> make any description self-contained without repeating the same stuff
> over and over and over again.
>=20
> Here's a short examples from a random place in the Emacs Lisp
> Reference manual:
>=20
>      When an editing command returns to the editor command loop, Emacs
>   automatically calls =E2=80=98set-buffer=E2=80=99 on the buffer shown =
in the selected
>   window (*note Selecting Windows::).  This is to prevent confusion: it=

>   ensures that the buffer that the cursor is in, when Emacs reads a
>   command, is the buffer to which that command applies (*note Command
>   Loop::).  Thus, you should not use =E2=80=98set-buffer=E2=80=99 to sw=
itch visibly to a
>   different buffer; for that, use the functions described in *note
>   Switching Buffers::.
>=20
> The three places which say with "see SOMETHING" are cross-references
> to other parts of the manual.  Without being able to cross-reference
> there, the text would have to explain what it means by "selected
> window", what it means by "commands" and "command loop", and mention
> explicitly the functions to switch to a buffer which are already
> described in detail elsewhere.  This allows readers who already know
> about those subjects to read the text without having to skip large
> amounts of unnecessary information, while also allowing readers who
> are not sure they know about that to be able to follow the link, read
> there, and then come back to the same place to continue reading.
>=20
>>>  They also
>>> have indexing and commands that allow the reader to use the index in
>>> order to find the subject he/she is interested in very quickly and
>>
>> You mean whatis(1) and apropos(1)?
>=20
> No.  These perform text searches on the titles of the man pages, and
> are therefore limited to what is in the title.  Indexing is much more
> powerful, and works on the topics in the index (which, as explained
> above, could contain text not present anywhere else in the document).
> And every respectful Info manual has an index (some have several
> indices).  See above about the commands which use the index.
>=20
>>> accurately, even if the text of the index entry doesn't appear
>>> anywhere in the manual.
>>
>> man pages have several ways:
>>
>> -  Including keywords in the NAME section.
>> -  Link pages.
>> -  TH line.
>=20
> This is not enough, IME.  You need a way of "tagging" a chunk of text
> as describing, or being pertinent to, a particular subject, even if
> that subject does not appear literally in the text the reader will
> see.  That's because when readers are after some specific material,
> they don't always have in mind the exact words used in the manual for
> describing that material, they could have some alternative phrases in
> their minds.  Good indexing anticipates this in advance, and provides
> index entries for those alternative phrases, allowing readers to find
> stuff quickly.
>=20
>> Of course, this is for the terminal.  For PDF or HTML, you can
>> get hyperlinks to any subsection (and in the future maybe even
>> tagged paragraphs) within a page.
>=20
> In Info, references to any paragraph are available since long ago.
> They are invaluable in some situations, especially when some section
> is very long and you want to point to a very specific part thereof.
>=20
>>> How can you document a large and flexible software package, such as
>>> GDB or Texinfo or Emacs, in man pages?
>>
>> git is a huge program, yet its man pages are quite useful.
>=20
> Git is a huge heap of separate commands, with very little to glue them
> together in terms of documented functionalities.  Still, even in Git,
> there's the stuff that belongs to neither command in particular, and
> thus is documented in man pages with invented names like
> "gitrevisions", which is impossible to guess in advance for a newbie
> who needs this information.
>=20
> Moreover, the introduction material and the explanation of basic
> concepts is not in man pages, but in a separate HTML document ("The
> Git User's Manual"), and likewise the API documentation, which in
> itself is a telltale sign.
>=20
> While something like a huge heap of man pages is perhaps borderline
> reasonable for Git, it isn't reasonable for programs which are not
> easily broken into separate independent "pages", like GDB and Emacs.
> The more complex is the system of objects and concepts manipulated by
> the software, the less appropriate is the man-page format for
> describing it.
>=20
>> Just split your documentation at the right boundary, which
>> usually requires a good design for your software that allows
>> such division.
>=20
> Whether the manual is split or not is immaterial.  Info manuals can
> also be split.  The relevant issue is what the viewer allows the
> reader to do to read these chunks in a reasonable way, using efficient
> commands and features to find related information quickly.
>=20
>> The fact that current man(1) implementations don't exploit
>> the whole power of man(7) doesn't mean you can't design a
>> software that does.
>=20
> Indeed, it doesn't mean that.  But we are discussing what is there,
> not what could be there in some distant future.
>=20
>> I'm sure you could build something similar to info(1) that
>> got man(7) pages as its input.
>=20
> No!  The information about subsections, cross-references, and indices
> is missing.  That information must be there to begin with, otherwise
> it cannot be recreated, because it's inserted by humans, not by
> programs.
>=20
>>> It isn't missing.  The TOC is presented as top-level menu in each
>>> manual, and large manuals have also the "detailed menu" with all the
>>> sub-nodes spelled out.  In addition, the Emacs Info reader has the
>>> Info-toc command, which presents a structured menu with all the
>>> sectioning levels of a manual even if the manual didn't produce it.
>>
>> Ahh, yes, this is true.  What I found missing is a kind of a map for
>> knowing what I have available for navigating (also the fact that I
>> don't usually run info(1) makes me be a bit fuzzy on detailing what
>> is it that I miss from it).  So, info(1) has a map of the sections
>> available in a page, and does it also have a map of all the pages
>> in the system (or whatever you call your pages, I don't yet really
>> understand the organization of info manuals).
>=20
> Yes, it does.  If you invoke 'info' with no arguments, it will show
> the "directory" of all the installed manuals -- a large menu where
> each manual has at least one line explaining what the manual
> describes.  Some manuals have much more than one line; examples
> include Coreutils and Binutils (which have a line for each individual
> command) and glibc (which has a line for every _function_).

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------13DFpViJVXJh0SzM6qB0sU67--

--------------zlaAqFKz0llpuUwVyklR9PXP
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQwkqQACgkQnowa+77/
2zLx9A/8Co0wrhwTp8bcbgQtZGIFODWEEioGT9YluJyQfew8XWsFHnR+XSKqukuA
Aj6pSgm0j8TQQGd8chq0IVHPK21PQqaYiaPdP0RM3Pt5E2vEZL6fzA7Pr56xhBtm
P9azVS3x2mg9pXfra93tA0dTtm16ULIRuNF3ImcGhzTzryRoY5eWIgrl5BwmTX+W
KS+pZwnhgtHV9nV64/iG2XVCVvSoa3cf9uoGmlSrt1rSKE+X31QgQjaB2sVKEEnI
HzlVd3kU4uHKO8THNsyITMJnKIo1DAOEQdwly6h7HBvxkiDlQ7XDsrsOzmx7F952
R2y1OTLpEarETABDlqR3DeMFbHY0UIpecm4gtXtG0jeM6MHgYftu+dfOZRJqjQrY
4DXjR6AINH/3xE+9Bxr//6q0nCrLwV5jJVbTqwwdZdckMVSApeXdahFR/4hnrqNO
VFxvJWglcWV3ureNoTjb3d/oGEMLp6vR7UU7ULISui680ZjhHxQwcLiX1iyeXfIs
pZpxjY0AcyiQwddI3D1IpPJ9RyI2pdndk2wIKMkyMkhL5K874ywCEHwNrI5nSW41
bwhJetQNsMjHKYJJv1R9mxph7dpwDynoRZjcCuodTMGWP8ci6SaZz5IMcINW8cKo
RN4uZkB4bQR/zA3HazpTEoNSDVPX3X97NStbECsIqdUeJ8lPGKE=
=fCGN
-----END PGP SIGNATURE-----

--------------zlaAqFKz0llpuUwVyklR9PXP--
