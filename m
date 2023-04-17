Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9AC146E3FAC
	for <lists+linux-man@lfdr.de>; Mon, 17 Apr 2023 08:23:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229488AbjDQGXq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Apr 2023 02:23:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229461AbjDQGXo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Apr 2023 02:23:44 -0400
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94EC33590
        for <linux-man@vger.kernel.org>; Sun, 16 Apr 2023 23:23:43 -0700 (PDT)
Received: by mail-ot1-x335.google.com with SMTP id ds7-20020a0568306c0700b006a5cea70c02so2022566otb.8
        for <linux-man@vger.kernel.org>; Sun, 16 Apr 2023 23:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681712623; x=1684304623;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rICAAbayI1hfn0NpirQnByCi4SIR6gZqB8uXKCqadw4=;
        b=Xey2ppVezdxv/XU5mNXw6dU+18bW8usWhWJpNsTlPaF1cHaeHS7b7z/a4ozRHHp1Cb
         0TodWYC7SfiAO0MbpBi8LkSTwQfPWmNEUt1dgVt43a5mCfZcn+bJqayh4jhwTZQjftzX
         MO3X1Z6NreiQ25x681PGYBexRgqff5LOSPBiuTL7PNMectMnkTwavasj+i43W3GyKBPc
         kW5FPIqQlwCmKnQPqGDc+9VCvHGQMy8uCVjeMpRBh9aKIMbyGbm/4JT87fwlEg9OIqtk
         9dEp/DtPuPGOd0WyZZzzKPTkYBokpQswm21FFQ0JVTcut91hNdEBpGKqoO1KMkdXs9gW
         yenA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681712623; x=1684304623;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rICAAbayI1hfn0NpirQnByCi4SIR6gZqB8uXKCqadw4=;
        b=Gkl+BVguhvAfeu9K972tCtM8cPUS4vpvzmN6Iubo5mNXQr3QswRCLwOyXwLIi/xdpw
         YGtj7Mio4JsVWjQpvlwccwRXRtlnfl8KXeK3H7ugoGNZaIkG5BeE6wM6jNroE/I98L/R
         Y6yXKGgAJx3UdxtRNrsC2KS/W3k+gfXq4BPJxPNDKrnpQbxBq/Szx1qNuVou0y79fHKr
         p09BjTK10BzMdkeJQYQyrVWO1paq5VE+tJ/hJXcjdosfXadG3H1g86DH4JNo6zWzIvWN
         BXERNDu+J6gUqvIiUFWmCWJl5IsGxckvCDgGhCJys8K0FoaDkehbRIZc9kVvonGjzXON
         oABg==
X-Gm-Message-State: AAQBX9eL6U7Vev0Az6H66VX38z6PlivoZbNYkw0k4U4sJ35YXmm4tlGx
        xyfO7FC0ck0McHbJbtGvwy86Sin+nWU=
X-Google-Smtp-Source: AKy350aC5Sxd3zqxBb8C21FkCLAjYeZUIk5NmKXMLC3itR4YczthbROXUPyoCKcYMngwzxq7jxtFpw==
X-Received: by 2002:a9d:7f95:0:b0:6a1:369f:c489 with SMTP id t21-20020a9d7f95000000b006a1369fc489mr6961125otp.33.1681712622836;
        Sun, 16 Apr 2023 23:23:42 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id m1-20020a9d6ac1000000b006a1287ccce6sm4135889otq.31.2023.04.16.23.23.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Apr 2023 23:23:42 -0700 (PDT)
Date:   Mon, 17 Apr 2023 01:23:40 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Dirk Gouders <dirk@gouders.net>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, groff <groff@gnu.org>
Subject: Re: reformatting man pages at SIGWINCH
Message-ID: <20230417062340.i6o4unour4rgd43u@illithid>
References: <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
 <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
 <20230407021822.3grfnenicwjhdive@illithid>
 <c704777c-bd1b-08d7-df63-7570d69b709e@gmail.com>
 <ghwn2nl4yn.fsf@gouders.net>
 <3f802d85-99a2-a9b9-ec5f-9e3067fdfc61@gmail.com>
 <ghsfd7k16z.fsf@gouders.net>
 <20230410202422.s4xdqcdxzsgdge7v@illithid>
 <ghfs96kbb4.fsf@gouders.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="nhfnxwepiueojbkc"
Content-Disposition: inline
In-Reply-To: <ghfs96kbb4.fsf@gouders.net>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--nhfnxwepiueojbkc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[CC list trimmed of Texinfo people/lists]

At 2023-04-11T11:39:11+0200, Dirk Gouders wrote:
[I wrote:]
> > 4.  A habit has grown up among man(1) programs and pagers to call
> > for and support, respectively, a "blank line squeezing" feature: any
> > runs of more than one blank line are condensed to 1 blank line each.
> > In groff 1.23.0, this will no longer be necessary when continuously
> > rendering.  (Historically, this squeezing feature was used to
> > "tighten up" vertical space after the page header, prior to the
> > "NAME" section heading of the document.)  In my opinion, pager
> > programs should perform as few transformations as possible on the
> > output of grotty(1), the groff output driver that supports terminal
> > devices.  The long-time author and maintainer of less(1) does not
> > agree, so you have to call that program with its "-R" flag to view
> > grotty(1) output as groff intends it.  (To see what those intentions
> > are, format the document without paging it.)
>=20
> Thank you for the detailled assessment.  Perhaps my misunderstanding
> is because I'm not a native speaker but which document should I format
> to see what those intentions are?

Just about any man page will do.  By "intentions" I mean things like
typeface changes and, in the forthcoming groff 1.23.0,[1] OSC 8 escape
sequences to encode hyperlinks.

For instance, if I want to look at groff_man(7)'s man page without the
intermediation of man(1) or a pager, I can do this.

$ man -w groff_man # to tell me where the document is installed
/usr/share/man/man7/groff_man.7.gz
$ zcat $(!!) | nroff -t -mandoc

I recommend the above as an early troubleshooting step with rendering
problems, though your terminal emulator may need a lot of scrollback
buffer, depending on the document.

(On rare occasions, a document may require a preprocessor other than
tbl(1), but the parts that use them generally won't produce good (eqn)
or any (pic) results on terminal devices.  "-t -mandoc" should suffice
for well over 95% of man pages.)

> > Since I flogged groff 1.23.0 three times in this email, I suppose I
> > should point people to where they can get the 1.23.0.rc3 release
> > candidate source archive.  Feedback would be appreciated.
>=20
> Oh well, I didn't measure it but I spent quite some time to work on
> doc/lsp-help.1 and try to find a solution for that "nasty empty line"
> that appeared in of the tables that I use for the online help -- I was
> convinced it was my fault.

I am sure a lot of people thought that.  I was quite pleased to track
down and stomp that bug.

> Gentoo already has an ebuild for groff-1.23.0-rc3 and simply using
> this fixes that problem in the table.  So, from now on all my testing
> happens with groff-1.23.0-rc3 and I will report should I recognize
> problems.

Please do.  Bruno Haible has found a passel of portability problems to
non-GNU/Linux systems, and helped us to resolve several of them; I am
hopeful that 1.23.0 will be the most easily deployed groff in quite some
time.

Regards,
Branden

[1] We just tagged and put out 1.23.0.rc4 this past weekend.

https://lists.gnu.org/archive/html/groff/2023-04/msg00135.html

--nhfnxwepiueojbkc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmQ85eUACgkQ0Z6cfXEm
bc5OFw//cgRAMgOf7qAtSM541cyD79cy5+vumphbr7RxZD9qvNvjUhXZr1PpYCsf
RzgFRonqJnfqMRtewilb2PNJ5TFNkh6R7B2LEQilVLDXN8qRdqBB1D+om0Vglisb
pEI+OTu87+uC6+mINStJFa059C4mGXZ/SZDiwYEpAHQKrcBRUyqdA/pjvYYFtHRe
QMEIzBPijWLR6VqtlQfZrZSgV8QIyBEqxuryfEMP/3XVS2DgaTc5BnoG7YX6sk2V
sfMhteAtXy5B11T8TXNNLLaNuBwUWZE7Udq8oWe/LaGK8LLQFXpc/WR8T92Fjsy0
ZdxY288Bfmd3su0rarv6S9StF/G3RDyQIYroEDxATnmjmFi25aZuk171CoIHVW4Q
/QZTkhXYL224HYvtD8d8A4kToiagHXfX/PwKZyk2KobX8l9nLAtKvLdAuauSl+PZ
Db4Qb0KrTle0unzDZBt16rt0t1yiiBE2Li9jjzumHIAoI0UGW9tvJWUCCyaWKiOc
5FBd3Aoe5ZerDF/4v2tlp18QH/5LSa0cfjr4YNh5um9pPivOiUwn+4ueu0jdlOhN
GsAVHCntk28qSBV/abPtA1Ov6qRc+P+8JaEQOHC+pcxsz+W3qXhhnLvRu+mMDvk/
fbxnywhu3sUkqcPES5FbSItwgJa5JCPO++gH2OQUadjLCJX/ayk=
=Gvkp
-----END PGP SIGNATURE-----

--nhfnxwepiueojbkc--
