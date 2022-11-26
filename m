Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 488F0639857
	for <lists+linux-man@lfdr.de>; Sat, 26 Nov 2022 22:56:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229453AbiKZV4L (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 26 Nov 2022 16:56:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229569AbiKZV4K (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 26 Nov 2022 16:56:10 -0500
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1114417E2A
        for <linux-man@vger.kernel.org>; Sat, 26 Nov 2022 13:56:08 -0800 (PST)
Received: by mail-ot1-x32e.google.com with SMTP id t19-20020a9d7753000000b0066d77a3d474so4708155otl.10
        for <linux-man@vger.kernel.org>; Sat, 26 Nov 2022 13:56:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=I+oFgE41vO2m9UPTAz1BydLfWTTbLukg0eksS8LFPEo=;
        b=T91zMYWNQVtm0yBaLLnTKgmHl/EyPVYuHuh9x/9WlgWkHXsvJN4EiejlBJ42+slFsO
         yU0DYDJf9GvFQ/G8erBktb0w2rg1yJ5h+PlUQ1wV7KaN8mhkqvSnJ0IFau0aPKh8oGAG
         avtoIwWHW7pzpKrhx9eLIKIFI/QnTLA5x9t+W/RDVE2dxk2ULYHzL4Wt7s1gIz/EtiDV
         tbhVskDO1yeo5hI+NpUTwi8fkWsFGD23hp73Riz/AwlQpfc58mFnE222NVtuybNO5PiU
         1f6SwnuQgjVWptiigdYC4NXyhrlAqqWYYVAFpewa1hwpGgBUOmXaZ0/wQK3uP1I0vpwV
         nEbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I+oFgE41vO2m9UPTAz1BydLfWTTbLukg0eksS8LFPEo=;
        b=5RiNOZ3ePhNJpSsctbO5GDv8XBVmmd2gUZyJKNbU+mitpm2Htkv6UEJ1z5XH1UB6FH
         Rf4+SFcbAcESnylQDCdiQEBDk1YCodKx6b2ks5j8iJxRetEPCxMAFF/ffEMidemj1Ne+
         YFxdPhTQ0oqv+YaWBTOD54FWbQ7TeZSf9cyUauRiqdJ6ftzXN+VMKC21nLYZ0nLncPgB
         lSLc/Kea+GWZ82hMJwcpJNKuJn98l5pipCTqJ3O/5hmJrcA3z09GQCLD+kDQC3WupHnk
         uflyg5miDA6F9uPKCBK9NlOQo0IKZRVMJCtdNCw+Kv3tWmKh+j5nHRYSG+DXANcEu4xw
         LiDQ==
X-Gm-Message-State: ANoB5pmv5m7PurGZGvRxM3UDP+Z4df2XMWYJFDFnFKYvk3tBlnL0fhFF
        K5YkP8hAFEj5vAP2rzle/mo=
X-Google-Smtp-Source: AA0mqf6OjS0UUt14G3zo41rUFeYoUt3W/kuqYyCbnMecTypwshvDrdSleiJ3LK6PGfkhOftK2bnTOg==
X-Received: by 2002:a9d:7a85:0:b0:66d:a838:aa5f with SMTP id l5-20020a9d7a85000000b0066da838aa5fmr22499088otn.90.1669499767360;
        Sat, 26 Nov 2022 13:56:07 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id y9-20020acae109000000b003549db40f38sm2860042oig.46.2022.11.26.13.56.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Nov 2022 13:56:06 -0800 (PST)
Date:   Sat, 26 Nov 2022 15:56:04 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>,
        Deri <deri@chuzzlewit.myzen.co.uk>
Subject: Re: Doubts about a typo fix
Message-ID: <20221126215604.p3un3a4hxf32h24p@illithid>
References: <842adff8-8d8c-b189-8e6c-34be111b8b19@gmail.com>
 <20221123214019.6w2cv525fmr3akdr@illithid>
 <b91ea285-22f4-5f13-beb2-b0c74cc4db10@cs.ucla.edu>
 <20221126035253.pli53qzgfx6tbax5@illithid>
 <f406b9fd-8c2b-3ea2-d956-086442abfc00@cs.ucla.edu>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="m5l3uwqwgzecmajq"
Content-Disposition: inline
In-Reply-To: <f406b9fd-8c2b-3ea2-d956-086442abfc00@cs.ucla.edu>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--m5l3uwqwgzecmajq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Paul!

At 2022-11-26T13:01:58-0800, Paul Eggert wrote:
> [taking tz@iana.org off the cc as this isn't particularly time zone
> relevant any more]

Fair point.

> With the same input (that is, with the last line being "Copy and paste
> me: \f(CRfoo\-bar-baz\fP." and the same commands on Ubuntu 22.10, I
> get the attached, where the symbols are unfortunately
> indistinguishable visually.

I see what you mean and, yes, that is awful.  If I had to bet, I'd wager
that they really are rendering as the same glyph, possibly because
someone is remapping - to \- in man pages.  Many bad decisions like this
have been taken by people who have to deal with enraged man page readers
at terminals who never, ever use groff for real typesetting.  Both
audiences can be served but some care is required.

If someone has an Ubuntu 22.10 shell account they could offer me for a
brief period, I'd be happy to look around to see if I can root-cause it.

> If I instead use -P-e as Deri suggested, then I see this:
>=20
>   $ groff -Tpdf -P-e -man minus-and-hyphen.man >t-e.pdf
>   Failed to open
> '/usr/share/ghostscript/9.55.0/Resource/Font/NimbusRoman-Regular'
>=20
> so I'm in font-installation purgatory. I have Ubuntu's gsfonts package
> installed, but there is no file
> /usr/share/ghostscript/9.55.0/Resource/Font/NimbusRoman-Regular; instead
> there's a file
> /usr/share/ghostscript/9.56.1/Resource/Font/NimbusRoman-Regular. Presumab=
ly
> this is a configuration screwup on the Ubuntu side, as
> /usr/share/groff/1.22.4/font/devpdf/download is full of references to
> /usr/share/ghostscript/9.55.0/ but has no references to 9.56.1 which is w=
hat
> is installed.
>=20
> I assume this is an Ubuntu bug? Should someone file a bug report? At
> any rate it's not a good situation.

No indeed it is not.  This is a recurring, painful gap with
groff-as-packaged-by-distributors.[1]  Basically, something like a
"package trigger" is required to regenerate the "download" file that
gropdf uses to tell it where to find font files for embedding, not when
groff is upgraded, but when _gsfont_ (or whatever is providing the Type
1 PostScript fonts from the URW foundry) is upgraded.  groff doesn't
install a tool to help with this, though there is one called
BuildFoundries in our source tree, and even if we did, distributors
would need to add the requisite trigger(s) to packages that _aren't_
groff.

Deri has been leaning on me to make BuildFoundries a real tool that we
ship but I think there's more work to do than I can squeeze in before
Debian bookworm freezes, and that's my calendar target.  Among other
issues that need to be dealt with is the _disappearance_ of the URW
fonts.  That is, if someone has both groff and gsfonts installed, then
removes gsfonts, the the gropdf command should react
intelligently/helpfully the next time it is run (perhaps warning that
fonts can't be embedded).  There's no reason to force groff to depend on
gsfonts, not for gropdf's sake, and certainly not otherwise.  Some
distributors segregate gropdf into a "groff-perl" package because that
program is written in Perl.

A lot of the pieces are in place to make this work (Deri and I have
wrangled over gropdf's diagnostic messages in this very area, but I
think we reached consensus :D ), but it needs integration testing under
multiple scenarios.

> Ah, I guess my problem is that I was using ps2pdf, i.e.:
>=20
>   groff samp.1 >samp.ps
>   ps2pdf samp.ps samp.pdf

Ah, whoops.

> So I suppose I should use 'groff -Tpdf' (which I had forgotten about)
> rather than groff + ps2pdf. Presumably others make the same mistake I
> do, though....

Yes.  I'm not sure where the best place for this cautionary note is.
Not in gropdf(1), because the people who most need to know this won't
ever think to look there.  grops(1) seems appropriate but since most
people don't run that command directly that also seems insufficient.  A
brief warning in groff(1) similar to the one we have regarding
grotty(1), SGR escape sequences, and pagers as well might do the trick.

Deri, can you help me come up with a list of things that will break when
running ps2pdf over a PostScript document?  PDFs produced that way will
have no CMap.  What will happen to PS documents that use the SS or ZDR
fonts?  Will anything to do with paper format or orientation be
affected?

> Anyway, when I run "groff -Tpdf samp.1 >samp-better.pdf", cut and
> paste now works as expected, which is good.

Excellent!

> > I'm curious to know what that support looks like.  Is there evidence
> > of any _development_?
>=20
> At this point it's just Solaris bug fixes, mostly security. The latest
> patches installed on our department's Solaris 10 server are dated four
> weeks ago (patches to libz). None of this affects traditional troff;
> /usr/bin/troff is dated 2005.

I believe Solaris troff to be fossilized, and given the barriers present
to contribution to Illumos, on top the unsexiness of *roff compared to,
say, ZFS, I don't expect much more motion from theirs.

Ah well.  We can't solve everything.

Regards,
Branden

[1] I could do the trendy thing here and bash on distributors as evil,
    useless wastes of space, then show the world what a genius I am by
    inventing npm and having a left-pad problem.  No thanks.

--m5l3uwqwgzecmajq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOCi2wACgkQ0Z6cfXEm
bc60hg//V681Kjjs+NKZ4T0vGXSqT6EAqhlJ0bXu05R6RXxF5Q+/kIE82+yycWRy
HKR77F03obOZ/b0kgSmaNLhkQi17u7iqTKDtmA7P/hr4LSc2Z75d1K2eg+vIutDN
Eualvhyurp939bZzJC1IuGWGCk6B7K44j3ktM/dNJDjRic7mlBK8pJ+rm4E+DFvF
N5B8WQiw3eEln4Jnxf6FDcak7SovpMgsLdyFNKRWP4vtXmHYmiBYe5TN1S7LAAIv
wGERY4FUC9/t1UdX/FFhYzPsjt7pQp1mlGS3LdyguaGjxjHk8hgUzfMZIQh4Gbbw
+1vU9tZZ76enqV7m9yVqjSE964osS8006BoIq9axO+Ps5N6rejHHO4TWNj/kxsPc
/6YlTjaThuJSiQ4s94KM59/J3Eib2j8uSl+g3OqpTZv0esSOHDu1VWMRNTl6wxqz
ScdwU9srB2SgtudOUZbONF1LOj6MAOENdbZ1R39sMAkNUhEcZPW/vAUfH1k9N5KZ
x1lL3XDKjPHyqumchEZIcYRyKDhaMxB+kjvdJtIp3TDU1eUiAt0mzOaUUYl16iHr
V0TbB3JEJdP8Q4GtaOn7YMWMEWBbbi3ptt0DodRavNM8EJ3ePA7nx3efpAn/HvLh
NTXX8l5bEGja1tmINfUJHlJoCADZqRj0yRqq4CcB0UsoD1upxls=
=Zspa
-----END PGP SIGNATURE-----

--m5l3uwqwgzecmajq--
