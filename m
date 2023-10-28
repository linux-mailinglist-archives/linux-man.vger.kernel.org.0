Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2203E7DA714
	for <lists+linux-man@lfdr.de>; Sat, 28 Oct 2023 15:07:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229521AbjJ1NHV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 28 Oct 2023 09:07:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229449AbjJ1NHU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 28 Oct 2023 09:07:20 -0400
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6ACBD9
        for <linux-man@vger.kernel.org>; Sat, 28 Oct 2023 06:07:17 -0700 (PDT)
Received: by mail-ot1-x336.google.com with SMTP id 46e09a7af769-6cd0963c61cso1868202a34.0
        for <linux-man@vger.kernel.org>; Sat, 28 Oct 2023 06:07:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698498437; x=1699103237; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ICwm/BRemJp2zwEbdxUWJm1Y8MNSJuKsXYRGsAoHJ8k=;
        b=AMItVOTN7eVxiv6ZDeXRl4Ex9FP9xhB/tMJrovkOn+Qmj3sec9kZ5b/NSDmJ9rA4Hg
         98zMUaJLnEfwiEk5HvFlmJyd3/ggzWqgp0FTWgQkmwYBYDweqLKvXRvX7VUxtkz53hUW
         HR5WI8I4sw3HsTbShvJ3q2k5Aawr/7bKvRPS8BdWl9HSWz6zU/2xtgDpb7xghDR/1IZR
         TXNFIll1rBDtOdKV4hZzaXaxUKyo2RO7P0xfNQj2sKGN4u3ABChsL2af9BWMA3excR9S
         pIqoe9ccPm7jKM4Z/Ek6IFCgrFL8/sfUVP49qK5kRjQq2dDoob0hG8Y5ym/UQxeP+2RV
         JJog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698498437; x=1699103237;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ICwm/BRemJp2zwEbdxUWJm1Y8MNSJuKsXYRGsAoHJ8k=;
        b=EZz4y2MDtp3rTEHR7mWk/X1WHtlgME1aRPYBCzTtx6Vm46zwJMKp9zG6pW1XfMrres
         uvHswub3QXbLoKxGd0Jr+QSAxldAAm8cGnWKjNzzor7GXaQVaA971W4sfkvszvxmZ9dO
         tM9I4QbaignSYG+gGONzz8sYPbg1kW1y+p18HPy5CAJZJUr/AiPk51yuUCmQ99+atfJZ
         KwnL4noIrCcMfGwbdFrcaDTUOkxuZ7gW0DaychEIZbrvv2cSoABxMh3K7OFCmesHMYMP
         Wq0XRdrcCZbp3taWHDCpfXE5A0tO0hMAZBQuERN0kAkhqlIjjxrywbFOIynMD7rsJRsA
         PIKQ==
X-Gm-Message-State: AOJu0YxpvOJ3crJE46zBs47VUr1ICZrkd8gYu2r2+IyIZMULO+Ki038G
        LRHaDV3LeRy0AfRRlSutuhpPYYgKkE4=
X-Google-Smtp-Source: AGHT+IFt4677GxvRh1vT+tPQPxBIM25vMDBb6/E9APV5S9ZCgkbtmjOQK3J88zIPBpruMFJH3jqVfA==
X-Received: by 2002:a05:6870:1644:b0:1ea:7002:494d with SMTP id c4-20020a056870164400b001ea7002494dmr5372337oae.46.1698498436983;
        Sat, 28 Oct 2023 06:07:16 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id z19-20020a056870e15300b001db36673d92sm725953oaa.41.2023.10.28.06.07.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Oct 2023 06:07:16 -0700 (PDT)
Date:   Sat, 28 Oct 2023 08:07:14 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Muhammad Usama Anjum <usama.anjum@collabora.com>,
        kernel@collabora.com, linux-man@vger.kernel.org
Subject: managing tagged paragraphs (was: [PATCH 2/2] ioctl_pagemap_scan: add
 page for pagemap_scan IOCTL)
Message-ID: <20231028130714.inrfj5nzbqt25ms3@illithid>
References: <20231019131252.2368728-1-usama.anjum@collabora.com>
 <20231019131252.2368728-2-usama.anjum@collabora.com>
 <ZTbrIskF1mt0zTM_@debian>
 <20231024024802.e6hfjvfumzc2rbil@illithid>
 <ZTefONm-aap2x1nF@debian>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="4djlyxypt3gwldu6"
Content-Disposition: inline
In-Reply-To: <ZTefONm-aap2x1nF@debian>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--4djlyxypt3gwldu6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-10-24T12:40:55+0200, Alejandro Colomar wrote:
> On Mon, Oct 23, 2023 at 09:48:02PM -0500, G. Branden Robinson wrote:
> > If one has learned device-independent troff's output language (see
> > groff_out(5)), one can see that the space after the comma is simply
> > discarded.
>=20
> Hmm, I might use .grout for the similarity with that manual page name.
> ;)

Yes, I like the terms "trout" and "grout" for the original Kernighan
device-independent troff format and GNU's extended version of it,
respectively.  But I have met few other people who do.  :)

> > Good, yes.  I see what you're talking about.  We can now use
> > ioctl_pagemap_scan(2) as a site for our horrific medical experiments.
> > 3:-)
> >=20
> > I think this is an instance of the tricky little constraint problem
> > Michael Kerrisk and I discussed almost 3 years ago.
> >=20
> > https://lore.kernel.org/linux-man/a79fc055-c7ab-1793-04eb-eb4f678e5035@=
gmail.com/
>=20
> Yep, and like Michael, I also dislike the line break.  Is there any
> chance that we could make it not break after TP so that it (RS) would
> be usable there?

The exhibit was roughly this (based on ioctl_pageman_scan(2)):

=2ETH foo 2 2023-10-28 "groff test suite"
=2ETP
=2EB vec
The address of
=2EI page_region
array for output.
=2EIP
=2Ein +4n
=2EEX
struct page_region {
    __u64  start;
    __u64  end;
    __u64  categories;
};
=2EEE
=2Ein
Other text.

This already formats without a line break after `TP`.

$ nroff -man -Tascii ATTIC/vec.man
foo(2)                        System Calls Manual                       foo=
(2)

       vec    The address of page_region array for output.

                  struct page_region {
                      __u64  start;
                      __u64  end;
                      __u64  categories;
                  };
              Other text.

groff test suite                  2023-10-28                            foo=
(2)

If the paragraph tag is long, man(7) will break the line after it.

$ nroff -man -Tascii ATTIC/vec.man
foo(2)                        System Calls Manual                       foo=
(2)

       vecvecvec
              The address of page_region array for output.

                  struct page_region {
                      __u64  start;
                      __u64  end;
                      __u64  categories;
                  };
              Other text.

groff test suite                  2023-10-28                            foo=
(2)

If you want to set the tag on the same line as the tag, you need to give
`TP` an argument indicating the desired width of the tag.  E.g.,
".TP 11n".

$ nroff -man -Tascii ATTIC/vec.man
foo(2)                        System Calls Manual                       foo=
(2)

       vecvecvec  The address of page_region array for output.

                      struct page_region {
                          __u64  start;
                          __u64  end;
                          __u64  categories;
                      };
                  Other text.

groff test suite                  2023-10-28                            foo=
(2)

If you want to _force_ a break after tag no matter its width, there are
a few ways, but for practical purposes, an inset region is useful.

I'm considerably elaborating the example here to illustrate the
adaptability of the "nest-RS-and-RE-within-TP" approach.

$ cat ATTIC/vec.man
=2ETH foo 2 2023-10-28 "groff test suite"
=2ETP
=2EB vec
=2ERS
The address of
=2EI page_region
array for output.
=2EP
Further details about page regions.
=2ERS
=2EP
=2EEX
struct page_region {
    __u64  start;
    __u64  end;
    __u64  categories;
};
=2EEE
=2ERE
=2EP
Further discussion of
=2EBR vec .
=2ERE
=2EP
We will talk about something else now.

$ nroff -man -Tascii ATTIC/vec.man
foo(2)                        System Calls Manual                       foo=
(2)

       vec
              The address of page_region array for output.

              Further details about page regions.

                     struct page_region {
                         __u64  start;
                         __u64  end;
                         __u64  categories;
                     };

              Further discussion of vec.

       We will talk about something else now.

groff test suite                  2023-10-28                            foo=
(2)

Notice how I needed neither `in` requests nor the `IP` macro for that.

This approach is fairly flexible, and still works for simple cases (but
does _force_ a break after the tag).

$ cat ATTIC/vec.man
=2ETH foo 2 2023-10-28 "groff test suite"
=2ETP
=2EB vec
=2ERS
The address of
=2EI page_region
array for output.
=2ERE
=2ETP
=2EB vec_len
The length of the
=2EI page_region
struct array.

$ nroff -man -Tascii ATTIC/vec.man
foo(2)                        System Calls Manual                       foo=
(2)

       vec
              The address of page_region array for output.

       vec_len
              The length of the page_region struct array.

groff test suite                  2023-10-28                            foo=
(2)

> Yup, but anyone new to man(7) will likely be put off by that page.
>=20
> $ man groff_man_style | wc -l
> 1439

Because we don't know your terminal width, that number doesn't
communicate a lot.  But it is just shy of 20k words in groff 1.23.0.
The "reference" version, groff_man(7), is half as long.

> If you're just contributing a few paragraphs, you may prefer to learn
> by trial and error (which is a perfectly valid approach, and one that
> I prefer).

Experimentation is certainly superior to guessing (or assuming).

> Only when I wanted to learn the more obscure details, or quote
> to someone else, I've read that page (and I haven't read it entirely
> yet!).

I look forward to your critique from a position of practical experience.

Regards,
Branden

--4djlyxypt3gwldu6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmU9B3kACgkQ0Z6cfXEm
bc6IHQ/+JyijLnZgghgGh5W8HH2QbMk9yBixzRPqrLPk4qAddvgYjT1syYcmOTvP
bXPfbTQF4B/RfQ/Eu4dfX3w+goVcUJDL7fS0Dz0DloTOAuc+QNzVJ+qyoV2dMHqE
yVFzHOO7do+vuuB1NazLu1XzUHkOnSNvIMHIJcFVrS+g+0jIsQohDaXbi1X+66o9
EhxK9TMlboitmz1Lh1IaMTcF5g/JzxSISu7UmTdKAfb2ToGNobgOjtTUAclMoVYQ
fiiMqeF8mep8jVA4xI7qz++I81h6TvsThyfKdXH83AhI07GurLDKdyvKHEQ+1iMi
8exeW/9oZHyyzL6y/YlmXz+gzKXBko3mU0uNBQBsKIWZDpqSztLcWjNAr7zyN93+
uUPUJlLyfhMuoxSGSe7uvofXME0kxf8yN9aYXs3+Jihph1DAnQSi2L2TIes9LIpa
off5O7FkA94E3jSalf6lGN65J5qFzZ2eLFnO3KnzbmYvDRw/qh62JC+cxQunPv5W
eAYcY0EYyh89OFqbLTMzYNPcqQG1MdcYjRrj1+uX9EGJmIkoFegUQaeI3jeCDzRN
AcvMXPzH42WvtGnPS3p02k9lRRQ3VO6a0eor6klqGW0OLu9qSuhY+TpJPEYs+uUQ
p6Da+aoqz+BQqNei4aXg3p8nKFohu5GQWQOIo+zMQITLcAsgg5M=
=WTRD
-----END PGP SIGNATURE-----

--4djlyxypt3gwldu6--
