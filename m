Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38E4865FBE4
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 08:25:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229516AbjAFHZs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Jan 2023 02:25:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229437AbjAFHZq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 Jan 2023 02:25:46 -0500
Received: from mail-oo1-xc2f.google.com (mail-oo1-xc2f.google.com [IPv6:2607:f8b0:4864:20::c2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C29E86D534
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 23:25:45 -0800 (PST)
Received: by mail-oo1-xc2f.google.com with SMTP id h3-20020a4aa283000000b004ead187bd6eso307254ool.5
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 23:25:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7Iz5yU0xD4TIWSp9ReXA77CniMwYzXRH6KJTTysuxc0=;
        b=cVv2AzxOkukqRdsELT7XrN300BQ55tUzOQ1zBc97db9khzmnOM5rQbsrRN65gm/nvP
         GxGEocTdxlrb8HRz3lrtT+U7Lygz3WpoFdkLYQBrCqofGv/PJ3Hhx1GeX5pJuD7rDAdi
         9lU0tqdtnnnVPe1Udn9f9AFkmDY8AW/QIfq3Imbk6DGPUcMEJycBkTIlAV8fKnTUI3NI
         a/3m9JXSCPlJ9lnLYO0dlCgHLsK+EbuX6a73y/crJrBO104zecZLATh8o7CM7cBBi1tW
         TLxFQl3NdX11trrzVHrBOqJ0OzuvTf/QWZYQhcZjOLAtLv00yL16Rdmw/gkHo440l1KJ
         COag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Iz5yU0xD4TIWSp9ReXA77CniMwYzXRH6KJTTysuxc0=;
        b=vx5k5d8lNXiJMOXkpAZp3HuJ+BrDnooQOOdaMWi9Qgr1kr3SfNvAfy++gXa2km2FJQ
         dZ0bn2U/ehobMCIVs431h0WscKS0x+hqHEO+XiPogHDi6waYGrLGHHmJLZ2BeAvFkM4i
         3hMOC3phYaJHyEsBc6oknI56iVHnW8piHbw23zlEht5vl3IHIGaUz+My1ZTY7LHYrEGU
         UlxU81nRJZFVEqZGl0gx9qKjmSMDs8TT5C70jmXE197AwTu83EdVRAl3SMV4WJrVbu0j
         eaB8oQpGbTCoDGKYNX0GOXZjOgjHlc3ytSUvjEgrJ2lyFpGL3Shn3mK7x+aoLBszKl2O
         d7jQ==
X-Gm-Message-State: AFqh2kpnjX4FyidhtpCe4FVcvhiOdOHfNwcpqLbb+EAaBCX5AExh7UXf
        MlcaRwF/wIH2gbDf9CUuQjBnPRvdMDk=
X-Google-Smtp-Source: AMrXdXuEhmXdic4ob7diNzy4nImF02hAax4XnB0YMR9eNWY/umKVUmlYtvXj51D+PaaBymeb2t/10w==
X-Received: by 2002:a4a:ead2:0:b0:4a3:6701:52e0 with SMTP id s18-20020a4aead2000000b004a3670152e0mr26909661ooh.9.1672989945098;
        Thu, 05 Jan 2023 23:25:45 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id v7-20020a4ade87000000b004d1d34f0267sm144334oou.40.2023.01.05.23.25.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 23:25:44 -0800 (PST)
Date:   Fri, 6 Jan 2023 01:25:43 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v3 07/13] libc.7: ffix
Message-ID: <20230106072543.w6e5rh5zxdevps6z@illithid>
References: <20230105225303.bpo7ot4zcsthw2gv@illithid>
 <7aa64afd-86ea-fa04-9e97-98b60ff8b264@gmail.com>
 <20230106001719.imokpcfcqbuuuxka@illithid>
 <1a37e727-f673-c3bf-2524-823100858b2e@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="zs7vwjb5ufbqb7yf"
Content-Disposition: inline
In-Reply-To: <1a37e727-f673-c3bf-2524-823100858b2e@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--zs7vwjb5ufbqb7yf
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[This is a re-send without the attachment, which kernel.org rejected.]

Hi Alex,

At 2023-01-06T01:39:09+0100, Alejandro Colomar wrote:
> On 1/6/23 01:17, G. Branden Robinson wrote:
> > $ groff -man -Tpdf <<EOF > quote.pdf
> > .TH foo 1 2023-01-05 "groff test suite"
> > .SH Name
> > foo \- "frobnicate" a \(lqbar\(rq
> > EOF
> > $ evince quote.pdf
>=20
> For some reason, I momentarily though that those would produce the
> same code.  I think I was confused by some other thing: in some cases
> you can use '"', but in others you must use \(dq (macro arguments).
> Probably that triggered a wrong connection in my brain...

Right.  \(dq is strictly equivalent to " (as a glyph) everywhere, but in
arguments to macros and some requests, " serves as a quotation operator
in the language.

groff 1.23's Texinfo manual says:

--begin snip--
5.6.3 Calling Macros
--------------------

If a macro of the desired name does not exist when called, it is
created, assigned an empty definition, and a warning in category 'mac'
is emitted.  Calling an undefined macro _does_ end a macro definition
naming it as its end macro (*note Writing Macros::).

   To embed spaces _within_ a macro argument, enclose the argument in
neutral double quotes '"'.  Horizontal motion escape sequences are
sometimes a better choice for arguments to be formatted as text.

   Consider calls to a hypothetical section heading macro 'uh'.

     .uh The Mouse Problem
     .uh "The Mouse Problem"
     .uh The\~Mouse\~Problem
     .uh The\ Mouse\ Problem

The first line calls 'uh' with three arguments: 'The', 'Mouse', and
'Problem'.  The remainder call the 'uh' macro with one argument, 'The
Mouse Problem'.  The last solution, using escaped spaces, can be found
in documents prepared for AT&T 'troff'.  It can cause surprise when text
is adjusted, because '\SP' inserts a _fixed-width_, non-breaking space.
GNU 'troff''s '\~' escape sequence inserts an adjustable, non-breaking
space.(1)  (*note Calling Macros-Footnote-1::)

   The foregoing raises the question of how to embed neutral double
quotes or backslashes in macro arguments when _those_ characters are
desired as literals.  In GNU 'troff', the special character escape
sequence '\[rs]' produces a backslash and '\[dq]' a neutral double
quote.

   In GNU 'troff''s AT&T compatibility mode, these characters remain
available as '\(rs' and '\(dq', respectively.  AT&T 'troff' did not
consistently define these special characters, but its descendants can be
made to support them.  *Note Device and Font Description Files::.
--end snip--

> Which by the way reminds me that in language, we use the ellipses
> together with the last word.=20

In English, yes.  I won't promise you that French doesn't surround it
with =A0 (non-breaking spaces).  Natural languages may vary here.

> Where did this idea of separating it in synopses come from? Maybe
> logic thinking, such as placing the period outside of quotes...

My _guess_ as to the _reason_ is as I said earlier--to reinforce the
idea that the optional arguments are whitespace-separated.  As for where
it came from, the strongest historical claim I can readily make is that
it appears in the earliest Unix man pages for which we have hard copy.

So that would be the ar(I) page in the (First Edition) Unix Programmer's
Manual, dated 3 November 1971.  Let me know if you don't have ready
access to a copy and I can email it privately.

> So, I guess I'll pick that patch.  I'll tell you if I do.

When you've reported one as applied, should I drop it from my further
revisions of the patch group?

Regards,
Branden

--zs7vwjb5ufbqb7yf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO3zPcACgkQ0Z6cfXEm
bc78GA/+Ll3ylKUYTYev33/2aGSidWawWtfKCk5X/LA1JeDacpfGThdHDlhRC7O2
8en4M9a1Oeys0Cjv8lcHh4SeJUqhXdmS3r9RMDLc/rZpioAhRsXHpK7x4PDWDgPR
Kja7x5+aGWOEJiBaYMytkocaGvX+6oQC/TH/zmn/rSUDqXoZ90q8u7K/qQ9ywzqz
ldlsWX6ROAfgU71o/DhMvivvo/UlpIo5IebJTt6Nbh+p86mSjbfUs0upKulu2rAp
OILonbutaVTNh3EdhNHx8dE6Q8enepHaPQamvHJGcbH1CK5MvqbQpDNJszNotNnP
SnHWGfIbgcsWV7abLD60S/Vo28tDUoyeUonmjoQL0ChqS3Dy5bd0oIxko0ZXRHd8
BL9+/Y9GEO1hvzKIxf/EdZ+mo6dnvPxcQuqtDlTEzqbyc3lr1kKa1upsxCvhL6OJ
w91WBguORTgZghxE8yS9Wt6X0Z5Rf9L/4fDnJYRGlnmwxIlPnJexeNQpzKm9y95P
VBRsb4EJGO0XAK+ltuQ5zbOx874Fa8QV7erNa2Basz25vWCvaRmqZmgi93zQ4sgj
wyFODlNbvtme+JDJTaSAGimRb0kxWXgtJXPiESg1w9/Hl2BfADjXPuA9XPn6t2Uv
/VqbKgdec0CBMRzF8Yx5JVCq6/FkS0n+PhIVjdUAJCIqey7rr0E=
=RXr7
-----END PGP SIGNATURE-----

--zs7vwjb5ufbqb7yf--
