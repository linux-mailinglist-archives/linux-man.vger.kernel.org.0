Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A6E66C731A
	for <lists+linux-man@lfdr.de>; Thu, 23 Mar 2023 23:30:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231614AbjCWWaF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Mar 2023 18:30:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231584AbjCWWaE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Mar 2023 18:30:04 -0400
Received: from mail-oa1-x2f.google.com (mail-oa1-x2f.google.com [IPv6:2001:4860:4864:20::2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6116429E2E
        for <linux-man@vger.kernel.org>; Thu, 23 Mar 2023 15:29:58 -0700 (PDT)
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-17786581fe1so24143045fac.10
        for <linux-man@vger.kernel.org>; Thu, 23 Mar 2023 15:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679610597;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CnY0ene/WR+SxBq9JquHdga4TqvfMyem7XtOLicHtY8=;
        b=H/utYkCXjtp0AMI0XbYhtlpggAkasH5XSZZ19tM49xkoX07veCO0UXkUvqqQ7oQDlU
         6f/dWtB3ul1w3eDF2WHbKtM0lFvWwlK+t9ERIkcOQ2GneLH9RzHuQ6zAUvtYrp4FQ+Ft
         kSPhX0v1WD5v/wNvDMMWlfXIEOT3UkW5kzkM9P4nHaLw0aTm5AZD7TPqJu7JDef4YVeo
         YtRWOqaimMYjm9tE/CE+yKdiRkh3Or9pPAajs5TOC5RFQSk4tCwJ23lQ0NKwIBAUf4Bm
         w+PBJop710Wjo3RgII6nbt02FKOLMxS7AKjdP5qwU96vfZAs1zyYKp1XMQ6o3CXe1v7B
         p4cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679610597;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CnY0ene/WR+SxBq9JquHdga4TqvfMyem7XtOLicHtY8=;
        b=gl8d09efyQ6rs/8Bk7OCUU/1Tde3MgOI8zTQiHhBgC/UdxFGiFjgLnW8yWkT5917No
         PDamMIOdBeX5x1Y1jCVRDey7o619KNZ1/GDVyEegAuBJu/xCPU98e6xuz51ng7Zo2bRX
         arZwGr4rF5WtSalBHaJb5LmZjYkka9NzlbzbmqtsprodgBmQOtuYa2Mcd/McKN47A1Jg
         bkfAmgAzieAw+doHBCKqSXhmHLr0JvsslRVRmvRDBIiEkdFR8L4oZcqd7k8AlxdmEZqg
         QykWZTYWPJFFvZYBnMW3ZX6uFImJzRdMv/RcIcxC2ZxhSolR8rpmNniPpJAyz8blTjsV
         reGg==
X-Gm-Message-State: AAQBX9dZ2I3C4R7cxr8TRuFWMbxQYHMEzYoQ0yV0PVB8lCo9RdM5Ofas
        k1SyqeTz1ssCWSQtcc8XFVwKPmeIE0c=
X-Google-Smtp-Source: AKy350YhZ/29DptZM9eIZK4GR7VwSW7gLGGg8UDXXY1FFwCmxwsjG2Lr247YcFDFFnKXAKmYaQyMbQ==
X-Received: by 2002:a05:6870:828b:b0:176:acb8:905c with SMTP id q11-20020a056870828b00b00176acb8905cmr327254oae.26.1679610597602;
        Thu, 23 Mar 2023 15:29:57 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id h15-20020a9d6f8f000000b0069fa834c3b4sm1526614otq.19.2023.03.23.15.29.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 15:29:57 -0700 (PDT)
Date:   Thu, 23 Mar 2023 17:29:55 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        groff@gnu.org, Helge Kreutzmann <debian@helgefjell.de>
Subject: Re: [PATCH] man7/: ffix
Message-ID: <20230323222955.xm7ykh32izdrl3k5@illithid>
References: <20230312110203.3898-1-alx@kernel.org>
 <20230312164434.ga3hkxnszly7agk5@illithid>
 <e35baa3f-91af-dfb2-2ec8-cc2dea002f79@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="tgmnqglvdciitxve"
Content-Disposition: inline
In-Reply-To: <e35baa3f-91af-dfb2-2ec8-cc2dea002f79@gmail.com>
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--tgmnqglvdciitxve
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-03-12T22:39:20+0100, Alejandro Colomar wrote:
> On 3/12/23 17:44, G. Branden Robinson wrote:
> > In groff 1.23.0 (which still doesn't have its final tag :( ), the
> > man(7) macro package remaps the `I` (italic) style to `BI`
> > (bold+italic) if it is available and the font being used for
> > (subsection) headings is configured to be bold.
>=20
> Yup, I tested it only with 1.23.0-rc3.  I assume 1.22.4 will do
> something reasonable, but probably not so good.

groff 1.22.4 man(7) performs no font remapping in (sub)section headings,
so if you ask for font style `I` there, that is what you will get, at a
lighter stroke weight than the adjacent upright bold material.

Perhaps only typographers and nit-pickers will notice the difference...

> Heh, I remember having some problem related to this reading mandoc(1)
> (or maybe it was mdoc(7)).  I don't remember which it was, but having
> a quick look at mandoc(1), I found some flag insufficiently
> documented: '-l'.  See the only mentions in his page:
>=20
>        MANPAGER  Any  non=E2=80=90empty  value  of  the  environment  var=
iable
>                  MANPAGER is used instead of the  standard  pagination
>                  program,  less(1); see man(1) for details.  Only used
>                  if -a or -l is specified.
>=20
>        PAGER     Specifies the pagination program to use when MANPAGER
>                  is not defined.  If neither PAGER nor MANPAGER is de=E2=
=80=90
>                  fined, less(1) is used.  Only used if  -a  or  -l  is
>                  specified.
>=20
> That's probably a glitch of not having a comprehensive list of options
> and their description.

=2E..or a glitch of not integrating discussion the `-l` option into the
narrative as Ingo suggested I do.  I further note that at least as of
mandoc 1.14.6 in Debian, `-l` is also not documented in its man page's
"Synopsis" section.

I can't hurl too many stones--there are groff man pages where I not only
do not practice what I preach, but where I haven't even gotten around to
recasting a former contributor's rambling asides and rather anguished
English.

> Going more into what concerns me, which is man3, I often miss an
> ARGUMENTS (or PARAMETERS, to be more precise) section in the pages for
> functions.  Sometimes it would be just one line per argument, but in
> other cases it would help a lot have more organized information.  I'll
> show you a few cases where I've used it, and where I think it made a
> difference.
>=20
> <https://github.com/shadow-maint/shadow/blob/master/lib/stpecpy.h>
> <https://github.com/shadow-maint/shadow/blob/master/lib/stpeprintf.h>
> <https://github.com/shadow-maint/shadow/blob/master/libmisc/agetpass.c>

I don't have strong feelings about this.  A deeper principle I hold is
that functions shouldn't take a lot of arguments in the first place.  If
they do, it is a sign that

1. a data structure is called for, and a pointer to it should be passed;

and/or

2. the function is too complex, tries to do too much, and should be
   decomposed into orthogonal features.

The latter doesn't mean you can't also provide a convenience function to
handle common cases, or show the user how to implement one.  To recall
and old disagreement of ours, this is why I prefer memset() to bzero()
as a standard library function.  (Yes, memset() takes more arguments,
but it is also more _general_.  But I digress...)

On the TUHS list in the past year or so, someone posted, or shared a
link to, a reminiscence by a 1970s Bell Labs CSRC person that they
introduced the system call with the longest signature seen in Unix to
date (I think it was mmap(2)).  They expressed nervousness about it,
fearing cries of inelegance from their peers--perhaps even the figure
of Ken Thompson himself darkening the office doorway.

But it went in anyway, apparently, on the strength of the functionality.
Maybe the prospect of fighting Multics on its own ground was too
appealing to pass up.

> It's kind of a synopsis of the parameters.  Would it be better _after_
> the description?  Maybe.

Maybe not.  _If_ you're going to have an "Arguments" heading for
section 2 or 3 man page, placing it between "Synopsis" and "Description"
seems appropriate.

> Is it better than having it all in the description?  I think it is.
> Will we see this in the Linux man-pages some day?  Maybe.  What's your
> opinion?

I think you should collect more opinions.  Also consider going back to
the Unix Programmer's Manuals of the 1970s and see how they tackled the
issue.  The complications of history are not going to make _every_
simplification impossible.  And you may well find places where these
manuals were ill-written or the API badly designed.  (Inter-process
communication was not born elegant in Unix and still isn't to this day.)

> Yup, I think the man pages should serve as both (short) tutorials
> *and* quick references.  If I need further info, I go to
> StackOverflow, but I'd like to understand at least the basics of a
> function when reading its page (and I've learnt many of the man3
> functions by reading the pages while maintaining them; for example, I
> didn't even know there was a regex(3) function until I saw the page
> being mentioned in a ffix patch by Michael; a few weeks later I needed
> it, and could use it by just reading the manual; then I added the
> example program with something close to what I did with it).

I learned years ago that the only way I can truly learn anything that
isn't simple is to start rewriting its documentation, which usually
means conducting a lot of experiments.  In the 6 years or so I've been
contributing to groff I've amassed a set of 1,433 files in my
"EXPERIMENTS" subdirectory.  I've also thrown many experiments away.

Other people may have an easier time forming accurate models of
programming systems in their heads, but for me the right approach
appears to be radical skepticism combined with a record of findings
(i.e., expanding or correcting the documentation where appropriate).

> Something I do is first look at the synopsis, have a quick look at the
> description searching for one line that describes each argument, and
> then look at the example program to guess myself about the function.
> Only after that is when I try to read the entire page to know the
> details.  But most of a function should be obvious already before
> reading the description, or the design of the function would be
> dubious.

I broadly agree.  This is one reason naming things well is important.

> Which reminds me that when I move to 1.23.0 as a dependency, we should
> have another look at Deri's script, and simplify it.

I feel a powerful urge to simplify his "an:cln" macro to near
triviality by filling a feature gap in the formatter.

https://savannah.gnu.org/bugs/?62264

Assuming groff internals work the way my mental model says they do, and
the test of that will come with more experiments...

Regards,
Branden

--tgmnqglvdciitxve
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmQc0toACgkQ0Z6cfXEm
bc7jFhAAmZ5/vgLdQB0IUlqRVg/ztob23le3guFGQ89HWV0TVDm9FS3NSFOrX26S
zleozU+XWRNc3Rz5ps+5hKlDo7jjELJ+nQL7AC+8dlGHRXRoU25kckTzKptdERY9
7WttlcDKtjRABFRj/oFCnwiQWKgjaF7JeplnZZFHScn+Il7C2zuwL8f32xUQYFJH
wDRiXZW1KGbujQLih7fW4pgFTsbzANHq9p83gutAVskvjQDwAM/xcIX2pwlOD9Az
inVUliP4D9CVOU4bAA49qlrIT1WpvXerjtya1UbJTU7Bzs78Paj0eksyjGMtSPY6
mvvH4MT8eQIBjWH6mVCmXY1LIvFCEWRbCauSriHnR3qki+jjOCzbU9/DDRlMixm4
QtmVGhoKYPtHJN05Dqa17R99/r/i5bhpKQnfQeKH32qYBZBE8rWRfx/xWFwEBBPd
bIqLsiUEbuCtcy1vQN8OTaFBbVfNb8one3RC/KGq4++AMOiReiSfLn/wyuo5jVeE
oIi+Bf4IR9WIOXIohEoKyXj1yTwQnfShi1NrtEVEHzxvMOjugJxXOjka9mYZQCtc
+YOmWVlyXZul2kTDevkQoz/4P0vui96lbJbPWeelD3lzWhW7ImNU4PecPYqL49w/
8UJTmzpAgjIhtJg/8ei7m1o2cQLHQOak0ll3g7jqnv+/e0uwOx8=
=noQq
-----END PGP SIGNATURE-----

--tgmnqglvdciitxve--
