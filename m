Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8BEB6E9BB9
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 20:35:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229523AbjDTSfD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 14:35:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229640AbjDTSfC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 14:35:02 -0400
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75C433C27
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 11:34:17 -0700 (PDT)
Received: by mail-ot1-x335.google.com with SMTP id 46e09a7af769-6a60460a23dso1082440a34.0
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 11:34:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682015582; x=1684607582;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FTNLzCGsOPS1k1rCLdiQEgIjaUChOxd5pB6YaE4mXtE=;
        b=cNnRRlxGsHobMZhRiQFltYTUsjctpwE0kNWXSTIekkh89eW9HrdqmSZNyAdIfga86L
         6NHJqOb4kkaR++B2iJH6TrhfiATx/QSsVsAKgtD/RDZBdhsSc4e5sXlHCjR8by8V2kMJ
         rEjOCvbqFyrFZcqvyBghZ5m8UIbN9kQSZBN9ksVaKfK6NyAVfnzCDYwQqQt5vAv9vJTZ
         rgeDFAMxRLkqxjTHcg+s9BR26Q1z4+qLJ3zOgaMCQ0H6IZ9ME5vj3lzDWw6ZW/N9syDC
         jpFReyvI6OMsmrLSBO2oOtHkWAjFBbwaEHZgczxY2kmuWHCJp4VDENKCWzeLAHbheGyP
         LA2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682015582; x=1684607582;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FTNLzCGsOPS1k1rCLdiQEgIjaUChOxd5pB6YaE4mXtE=;
        b=N4avyB0k87uR7zk8+Uw/01uyBph1GxVzweJim2SARzbREdZ7SKGd6N7I/KNZ02IQti
         NyHaLzlWq81/Q5RsrJdHFj20jpVQvrNgQuL/y7GCLercdU+o4VPYtDWjXdn6+3IjEKRz
         iTDQtBEOq3czVW3AJk46+iQ7SypdN7Wkol6aIbrETzaTNTdUjsbjnvmiiH1SK1AaalNg
         CXE8FopEkNBzclJiTk7DYIhLQobAFXGpXnLC6d9nvKUapk+C4nlgyhi8eUArtAOZqHRr
         V7/VPGU9b5HTuT5dxxO6NKwFfTzdVXaXLjldUfHQQaUSNoPqZlU1KKmFDR3Ljd+zdAO2
         khSQ==
X-Gm-Message-State: AAQBX9dCVb40f/8Odrn8OT+yNoqFIS37z+tSQLANeJzBF+nu1GjV8tOs
        JyPxgZkG6686j8YVT0nuXjM=
X-Google-Smtp-Source: AKy350ZbTGM97IZUAcSRkmMtra1/xWPmEO8S7BM+qpCSZo1Tf2vCyXKHhpDCH6dSS49h7mEQ+Vapzg==
X-Received: by 2002:a9d:640e:0:b0:694:298d:408a with SMTP id h14-20020a9d640e000000b00694298d408amr1026884otl.8.1682015582263;
        Thu, 20 Apr 2023 11:33:02 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id s23-20020a0568301e1700b006a5e751557csm954554otr.70.2023.04.20.11.33.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Apr 2023 11:33:01 -0700 (PDT)
Date:   Thu, 20 Apr 2023 13:33:00 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/9] regex.3: improve REG_STARTEND
Message-ID: <20230420183300.nsw4lh2c27lwsnrs@illithid>
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
 <5ae22853ab58af90c0ec2685bb740af1f6177dfe.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
 <20230420100059.hdtey45vpaytjcvg@illithid>
 <ooclowvlja44cqpomwmenrleernvsbsqfsmq7g5jydylbcptw2@4uys4qxjnnyy>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="hm7ml42c655hqekh"
Content-Disposition: inline
In-Reply-To: <ooclowvlja44cqpomwmenrleernvsbsqfsmq7g5jydylbcptw2@4uys4qxjnnyy>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--hm7ml42c655hqekh
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2023-04-20T13:13:29+0200, =D0=BD=D0=B0=D0=B1 wrote:
> On Thu, Apr 20, 2023 at 05:00:59AM -0500, G. Branden Robinson wrote:
> > At 2023-04-20T01:23:14+0200, =D0=BD=D0=B0=D0=B1 wrote:
> > > +> 0), they overwrite
> > > +.I pmatch
> > > +as usual, and the
> > > +.B Byte offsets
> > > +remain relative to
> > > +.IR string
> > I don't think "byte" needs to be captialized here.
> I'm using it as a Sx and the section is capitalised,
> so I think this should also be?

[Note for non-mdoc(7) speakers: `Sx` is its macro for (sub)section
heading cross references.  man(7) doesn't have an equivalent, though if
there is demand, I'm happy to implement one.  :D]

Nothing I can see in man-pages(7) suggests that references to
(sub)section headings should be in an unusual typeface.  The norm in
English is usually to quote them.  It's also unusual to pun a
(sub)section heading name as an ordinary noun phrase this way.

So in this case I would neither capitalize _nor_ embolden the phrase.
After a piece of domain-specific jargon has been introduced in technical
writing (usually with italics), it is not thereafter specially marked.
In long-form works, it may get a cross reference after it in parentheses
or a footnote if it hasn't been mentioned for dozens of pages and the
reader requires a reminder.  I don't think regex(3) is large enough to
warrant that consideration, and "byte offset" seems to have the meaning
that a programmer already familiar with the individual terms would
infer.

Just the usual style coaching, not a NAK.

Regards,
Branden

--hm7ml42c655hqekh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmRBhVQACgkQ0Z6cfXEm
bc5ogg/8D8gxuw8/57pH2vY/hSdFblyvBrE1loQqA/bwfiUSEOybKjpRPMYeP4NS
+6SRJZr8Ar1Lt55xilaDqkMmrO6YGKyx15tE1zT/WhPJmjeXHQgcGyzXrmqiPRo+
ePgn3YocS9crGUZ7z15lmCAwh2cKatNzsqu+vpSZrsRW/5QtnsMYwROYY7mp5tDp
iWG14GjOAiDWZhZJBjsgGVbLmehSrbdcskuufmIDA6DOfb9coB3TCnIUEKPn9Xe6
kz2E8uhReRZ2zHYUvk8+5dU2SftSfHEGvLipXQkj+Czv6NNoF1nXeuWeFLv6cIEv
8AtWBPn+zMAE6VcO8omO/JYD0Xn2NMP/815kePjw/RFxpXkOPP4d6hpU0TAYFyNY
wLJAkFnaRK+TfY3L8RVWIaqg7b2f1iSZGfn4Miar2V82Pm2rODHbgCFGfZr3l3AP
zaJBYLrTSunjKwAT5KrN2HMw8KLiYTBw8qDR1YkE4HEOmbp8S6Yf//d7in7WR0IC
BjSt8YlNNCCPhkHj8cF/wUUDAMzxemmecE8H8Da5LJD7cdABZdUCeiezAmTxNyr/
cuMVcmKlFDwNvaHed8M/SkzeedB5ISKoIUkmISnWPqRxTDGqBg9ctFdHEzXKOcxG
u+xIr0Mbg754jjLoPSICJM0aPYZGglC04BiWOlgtSHw1k2o93rQ=
=ryUa
-----END PGP SIGNATURE-----

--hm7ml42c655hqekh--
