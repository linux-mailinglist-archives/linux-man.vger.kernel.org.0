Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8940457D807
	for <lists+linux-man@lfdr.de>; Fri, 22 Jul 2022 03:34:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229660AbiGVBel (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Jul 2022 21:34:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229441AbiGVBek (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Jul 2022 21:34:40 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD66615FDB
        for <linux-man@vger.kernel.org>; Thu, 21 Jul 2022 18:34:39 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id r13so3911902oie.1
        for <linux-man@vger.kernel.org>; Thu, 21 Jul 2022 18:34:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=7+QF3WfiOoCWTlCNXlDNQqnFSpMB+gQUkPRlQBEgjzw=;
        b=dDKufYspIRbinAjTtgp7QPwj0PVqY53LJQL3D4wsQ7ZYpvE2Rqo6jxH/scPTsV8Qiv
         CS0+H+cfvFbRy2sZvkpDk33Mz2t0Py/nMt1I66q5yjVTThwMbr67HsMxNJa1mkiMCAp/
         ZAKfXfTzA371WPjBXABrGIjmSz+gyp2qzRU5dkPsvPekkdif3CvymAs4x64IOrexAJgJ
         nMJUIDZO1YURqXuu3AUQm/Dr1MTioALuz8B6tyMmrnQ01KMvh/8K3H4jeELrZICo121i
         9a8hLEJnbgYbPXozjCXVmkw0V1APdxyytZ8y5EhUkvQD68n/4I7j19DOSlB2IabMIiGA
         YLWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=7+QF3WfiOoCWTlCNXlDNQqnFSpMB+gQUkPRlQBEgjzw=;
        b=MY2GBstitbXwCEE7nwkMWG7qzSLFVZ1p1wxU9jZweY2uHAeHs7/v5KeyCXQqhkNfUr
         i7q4B66lNpVpXW4t2rujs9603MKamQVjeQ/0GHzcILUNGzFxMQS7u7pNG0nMMDC1yE/l
         TbnsxAstddgyHB0vz8xlVTdYjVPp8CVRHA5+t1qmjfw+teY1Rblf9VNnhff5CGOzfQTv
         Xe84sVEoYjsvhucHqzC2sln1n0vgSgCczWvmOu0vr4uGV4pHbxbXR883H1sy+Dx/5KCN
         t416vgW7B5R0KrL4qanT/7m+i2e8i8c63yslYNvXzgvmPcsI18FuOAszdQsZ8K+bJKUV
         qRig==
X-Gm-Message-State: AJIora/60mI3DBi1XKZbunA1se4lJoaZVg18e5KZlcJl7aDSWKj+7ega
        y7M8+z9IQcVzF13IlvJNoUSN9ZfNBGs=
X-Google-Smtp-Source: AGRyM1sAo66+BLQ+FZss9GxqfL0aonoIDy0H7tLJFmtmrSKRcRx4qo5oob7JhUjrYNmOxOOT5HscJQ==
X-Received: by 2002:a05:6808:1183:b0:2d4:5eeb:1ca3 with SMTP id j3-20020a056808118300b002d45eeb1ca3mr424386oil.8.1658453679112;
        Thu, 21 Jul 2022 18:34:39 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id f97-20020a9d2c6a000000b0061c87262540sm1397877otb.65.2022.07.21.18.34.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jul 2022 18:34:38 -0700 (PDT)
Date:   Thu, 21 Jul 2022 20:34:35 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>,
        linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
Subject: Re: All caps .TH page title
Message-ID: <20220722013435.mkzzfscdgtechzgx@illithid>
References: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
 <20220721183620.hdvgwwef66hmrgln@illithid>
 <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
 <Ytnt4dPmkrPmL1Sh@riva.ucam.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="m33almp2o2ybrhqx"
Content-Disposition: inline
In-Reply-To: <Ytnt4dPmkrPmL1Sh@riva.ucam.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--m33almp2o2ybrhqx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2022-07-22T01:22:57+0100, Colin Watson wrote:
> On Fri, Jul 22, 2022 at 01:16:49AM +0200, Alejandro Colomar wrote:
> > On 7/21/22 20:36, G. Branden Robinson wrote:
> > > At 2022-07-21T16:29:21+0200, Alejandro Colomar wrote:
> > > > Also, does it have any functional implications?  I'm especially
> > > > interested in knowing if that may affect in any way the ability
> > > > of man(1) to find a page when invoked as `man TIMESPEC` for
> > > > example.
> > >=20
> > > My understanding is that mandb(8) indexes based solely on the
> > > second argument to the `TH` macro call and (what it interprets as)
> > > the contents of the "Name" (or "NAME") section of the page.  It
> > > parses *roff itself as best it can to determine this.  So the fact
> > > that the _first_ argument to `TH` might be in full caps doesn't
> > > deter it.  (It might in fact have made mandb(8) authors' job
> > > easier if an "honest lettercase" practice had arisen back in the
> > > day--but it didn't).
[...]
> > > Since he's a mandb(8) author/maintainer, I would again defer to
> > > Colin Watson's knowledge and expertise in this area.
[...]
>=20
> The above is not quite correct.  man-db doesn't index on the .TH
> section at all, and I don't believe I've encountered the practice of
> doing so in other indexers (I could be wrong, but I think that's
> something I would have remembered if I'd noticed it).  Rather, it
> parses the "NAME" (or "Name", or a number of localized variants)
> section of pages using the man macro set for "foo \- description"
> lines and uses the left-hand side of those for page names, or
> equivalently looks for .Nm requests in pages using the mdoc macro set.

Ah, thanks, Colin.  A quick consultation of ncurses man pages reveals
that mandb(8)'s idea of the manual section comes from its place in the
directory hierarchy, not from parsing the arguments to the `TH` call.
My error!

> With the exception of handling localized variants of that section
> name, which is a pretty ugly pile of special cases, I believe this to
> be fairly traditional behaviour.  I can't say I would have done it
> that way if I'd been designing the system from scratch since it really
> involves far too much half-arsed parsing, but it seemed to be the
> usual thing to do when I came on the scene.

We could have groff man(7) and mdoc(7) recognize a register, named
`INDEX`, `DB`, or `SUMMARIZE` or something, which would cause the
package(s) to emit the required information, derived solely from page
content, in a desirable format.  Say, JSON, maybe.  Upon seeing this
register and reporting the data, the package could then invoke `nx` to
move to the next input file.

Thus, potentially, the indexing data could be generated with great
speed--you could call groff (or nroff, it wouldn't matter) with as many
man page file arguments as desired, specifying no preprocessor options
(except maybe those for preconv), and a large percentage of page content
would never even be read, let alone formatted.

Why, I wonder, was the thing not done this way in the first place?
Possibly because what follows "Name" can be arbitrary roff language
input.  However...

The "Name" section's contents can be stored in a diversion.  In normal
circumstances, this diversion's contents would be emitted immediately
upon any other `SH` call (or, for degenerate pages that declare no
sections after "Name", when the page's end macro is called[1]).

Once in a diversion, these contents are subject to "sanitization", a
feature I'm chewing over adding to the formatter.[2]  The gist is that
all the garbage (font changes, special character escape sequences) you
currently spent time parsing or stripping away is already removed or
transformed for you, leaving clean, printable ASCII or UTF-8.

At this point I pause to let the wave of horror break over my audience.

Regards,
Branden

[1] andoc.tmac contrives for this to be the case when rendering multiple
    pages.
[2] https://savannah.gnu.org/bugs/?62787

--m33almp2o2ybrhqx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmLZ/qMACgkQ0Z6cfXEm
bc6QNA//dIszK+Lffwrnky7s5NKPA0xEkTdE5W+iHWT8/T8vhMPSyqBk4DtVLV3C
pX3LqHflu787BOp8XdlGYhcatPNG5aWfrPnTE5Y5FNAb92KLNdCCZB+s50cFYHb1
h9QFUTPytb14QO8tQZZh7MviL0IwDjFTdRPxGkG7ttvm17x4nH5cjRtRzGwCD8NW
jnDA38FMuEzW9nAZIGAVY01TYqrYXTkqGuEtYcMcXchWKxWjmm4ZIyHd+oqxJ6RY
FNvL1VFUDuXeHhzmcylcQ/BVaUI0mKYuZEbrv6gp27Y/1S/8oDW0mTSQDg8YBT29
FdI22maeSLUJSCmWIzVDnwSeXezCwRobG71W3TBldXQw3ROHt28JclcoDowASu0X
YIb2AFDQNJftTxBCyBJsDT88uaB300x+rvrChivRU7u0laW+LAf6M5vUUPu5xfY8
N/izU1T29fvLchxz271BR1fMn0qy6GPV32WvuvtOLKg+VQcMLUwp0jVNccttiAIW
+DV7zQwLNyQqJiWKLNdIDx5ZDkLIipQYySzCJj4gT6VWGmui5i7vQuUeX95wqxc7
ijy/nFZRWZu56lv03mxcvZTgAUIJeOzfUihfSv2Vw/qydepTcvQYXI4YxEMkesHS
RNj22yEmp/Az/ZS33hMCNISQVhi4tbdQ66wye9M8IQfkmwyMalU=
=cIdl
-----END PGP SIGNATURE-----

--m33almp2o2ybrhqx--
