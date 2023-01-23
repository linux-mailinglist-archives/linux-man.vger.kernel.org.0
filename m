Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 256786776A0
	for <lists+linux-man@lfdr.de>; Mon, 23 Jan 2023 09:46:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231570AbjAWIqC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Jan 2023 03:46:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230122AbjAWIp7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Jan 2023 03:45:59 -0500
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0AEA193E1
        for <linux-man@vger.kernel.org>; Mon, 23 Jan 2023 00:45:58 -0800 (PST)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-15ff0a1f735so4970168fac.5
        for <linux-man@vger.kernel.org>; Mon, 23 Jan 2023 00:45:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vf8BuZ+vSCrPRBHM1q/5zSEDhZjYCGNODDi+BvW15JQ=;
        b=GrE0VsFHW/H2BYQE+1IvXgm8pmLTl4i8z1l/JFvnPbEm00YbyrqrCtO+4Fz7kiDXWL
         pqXfQmGYy7cw5qVhMyQq0Y1Ww18PnVk48emmBEftMzqVra87bZb4Mw7qbG4WrrgedfBe
         8Y22n0TF+sLfYoRA67ehlcS7C+1PIVcbxG3vZdCYyd5UMCW/b7i8oBqQJvzNeG3rT40h
         tCUWTOlwSrU+RQVa3eMYe2EguBww201ML1L0CVgFwh6+FeC8K/e8bHJxivWBY1fkd126
         zROC6X5siqGkchd6Wm1Y+ss5mTSbVeN9aObLi3XYjgFskvSXLe38iVjJFr3dpZTDPyQs
         3OmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vf8BuZ+vSCrPRBHM1q/5zSEDhZjYCGNODDi+BvW15JQ=;
        b=MYqW0kBncIoIsK0/QwCmAVgnUXqJVxWGClLrQgbU7vVF9CyDpJSWfoln+mlczuOry0
         BvEmESU49MD/TVyR4bYyauoaQZh9GH6yTqzKTk8ar0p3AJmr4ED80ApyIrOojMu/6VOl
         KYwt1TXu8q60zUVWudarB4E86j6IfRBTUhppStvVx3zXme8Lrvmi4O7/LspXd8vwEjuL
         F0rWw1goCVlZPSGTS0zQ75+917Tu56Kv+0y+PapcTGLj5+pm4ny4lGgz4FuP7lTspzVy
         9m/sh4tefthd5xST/JGyNtedsk/t4xB8ynSuNDbADYMMfd4ENNsvpcrQGw7PjL5etqDS
         SLsA==
X-Gm-Message-State: AFqh2kpGn6JZzM59fuPOvgmujMGF6HgenZe0VFAR2CdwF6oNcbErDbMd
        0ObvoUxXHg6PtLWuFdYTFeP25TdeC2c=
X-Google-Smtp-Source: AMrXdXto2Mlc+ityG14gjtE9bNeU8hVFi8fRqzGMdC13gAzyU4zZudVMSATXAeNtoMZmsWQKDbJsBQ==
X-Received: by 2002:a05:6870:3b8e:b0:15f:32b:6e3d with SMTP id gi14-20020a0568703b8e00b0015f032b6e3dmr11803094oab.54.1674463558015;
        Mon, 23 Jan 2023 00:45:58 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id g18-20020a056870a71200b001428eb454e9sm25458604oam.13.2023.01.23.00.45.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 00:45:57 -0800 (PST)
Date:   Mon, 23 Jan 2023 02:45:55 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page namespaces.7
Message-ID: <20230123084555.5oqiuzabsjpv2yas@illithid>
References: <20230122193125.GA28843@Debian-50-lenny-64-minimal>
 <21a40d27-e732-fb70-edc7-c18af8a59ed1@gmail.com>
 <20230122210207.w25k5br5idyna3c2@illithid>
 <9a08e09f-6ecd-3e53-6d5f-613fdd720a7d@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="bz7upqo6yc7n6qcm"
Content-Disposition: inline
In-Reply-To: <9a08e09f-6ecd-3e53-6d5f-613fdd720a7d@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--bz7upqo6yc7n6qcm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-01-22T22:11:06+0100, Alejandro Colomar wrote:
> On 1/22/23 22:02, G. Branden Robinson wrote:
> > I would use \fP instead of \fR, this way you return to the
> > "previous"
>=20
> Ahh, yes, thanks for catching that!  Sleeping 3 hours is definitely
> not good for the brain :P

Certainly not.  Good self-care keeps the engineer's brain supple.  :)

> > But I would also quote multi-word arguments to _any_ man(7) macro.
>=20
> Why is it?  I remember you mentioned that, but what's the win?

It's more portable.  AT&T troff and its descendants (except for Heirloom
Doctools troff) support only 9 macro arguments at most.  Worse, the AT&T
man(7) macros and most descendants support only _six_.

When doing maintenance, it's easy to forget that.

But even in a groff-only world, I would recommend the practice as good
style because it leaves room to expand the syntax of some macros.

Admittedly I don't see any promising places where we might do that in
man(7) to any macros that already accept formattable text as arguments.

I still think it's a good idea style-wise because the man(7) author
should keep the count of words following a macro call in mind,
especially if they want to effectively use the font style alternation
macros (.BI, .BR, .IB, .IR, .RB, .RI).

In mdoc(7) argument count makes a difference due to the package's
unique recursive argument interpretation feature.  Still, while this was
a measurable phenomenon 30 years ago, it may not be today.  (The whole
reason "cat pages" exist in man(1) is that the time spent by the
formatter on a document was significant then; it is negligible now.)

I will admit right now that I don't follow this rule rigidly myself in
groff's man pages when it comes to `I` calls.  I may fix that at some
point.  (If I did so, it would align doc/ms.ms better with groff_ms(7).)

So it's not a big deal, but there's so much ignorance about man(7) out
there that it's a goal of mine to make the language easier to acquire.

> > > +.SS "The \f[I]/proc/sys/user\f[] directory"
>=20
> Interesting.  I'll consider that for the long term.  However, for now
> I'll keep \fP style.

No worries.

Regards,
Branden

--bz7upqo6yc7n6qcm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPOSTwACgkQ0Z6cfXEm
bc4KZw/8DVuVX2a2a3aJqaffiz1FqjhsqJ3BBskv2dehSpoIHL8uleF93sCI5lWO
vdRMW1CWfvmdNcBUD4Bt4K/4EdH9ll2ChiRPQ2cym2tlaAZoTANOoxFw7MJPCJS5
RIMfKE75v/aQD4XW/kyVkbQQANQBnKB2kJjpUaN6sZsMtTYwQ1MKXDchbdTx/u46
BrjhP64wQFwKWBlYjKpfeD+pbM8exGTqpf4dHfHoHRnG0IaG3j8cv7TH5SjLNxOr
s2U+79tDwXgQ7NaQ9Lwyvc3r3OdzYwQ550pSVFtkovKXsiBhuKO41IHT0G8EjEKZ
3U39jHe+sBfUQUl2ZFF9ss7kb6LkQYFfel+0z1JrQQlkiqAjVSe60/sQU3Ek5pZ6
+waGehsnuOcldRS24Fa0C+5I3Ab+NjnLZn1KQguwVZdGYQZSBWJI0LpgHOY7Dwxj
qJ0Dy+nQMCyyLOu/VqYNd+qyRMnbxG+qk7cID7sURi/q5n74nPPOKSvMUhgmnZsE
O5dvxD/6Tkjf2RMd37LGo3JuTQnMD4ltIScQZ+z5f7OypogoOvvwXELWCJqb6ofT
glMyA5gTA+qRiaB3HSggozMRpdMwDAvlzgthGbK1GdLoRlHmyYqHWhX9qPwJCXUm
0bnIZcNPR4LMRVtm9V26CgaEvNrv2VaAi1D3GYU/8q9sAz5+GSo=
=s1/Z
-----END PGP SIGNATURE-----

--bz7upqo6yc7n6qcm--
