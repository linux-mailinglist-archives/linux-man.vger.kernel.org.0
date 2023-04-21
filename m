Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D5C06EA58C
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 10:06:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229751AbjDUIGN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 04:06:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229690AbjDUIGL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 04:06:11 -0400
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EDEA5FC9
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 01:06:10 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id 5614622812f47-38e5c33305cso1333313b6e.3
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 01:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682064370; x=1684656370;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=z4gnoi+Jv5vwuvRxmXZWWspHH5B00A8HoU3H+nWGG0U=;
        b=fKiw3AjhHW7X/UpcqqSwB5RZVeZIVNznDqqJQ/4KEbduveN7rlxAf8VE/mHJ/5+yk7
         ju9dVxYZwg7MxYeXoqRDMuGJN8Jkd8VkhdWiLLYCis2VNbe+8nzyoHh7jLIdXFVTvkai
         Hbqh5CmY+WsMyoAEueWbresbcRTDukS+hxztFHtJ9Rb+d9Wf3QcHsdP8Ud9/cd5CUmYm
         L8MLQO9xXF+ytXwQ6bYhr8x4oJBmiphjWl6CEsgf68zv573iV4451nxCUnGzQzpvKKgC
         gk2cZMhAAXbLiBjf3z8lAdQ0cfwHlHQ7bbutGcNv4uj7iRHQ8+UKGv65lv2pSe4g1k6f
         jZZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682064370; x=1684656370;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z4gnoi+Jv5vwuvRxmXZWWspHH5B00A8HoU3H+nWGG0U=;
        b=TSOzfDfxL3+oo3xb4bevqM4wpM97ZcvPMO3QstTB22F7R5xduOF1x5+sEqRTV2JDjn
         RALNHJryORRgOgkElq+v/mpzMrdamU+lzJwzLAIFNK9743GwUOuHnzZew6wZvJ2BNrod
         frYp+h7c+tyf/U0H3/PtuOoeHFaLX6GUya6xuyeqtPFYLf+j3PH7nuA+IxQV6iyZF93Z
         jRXt+DjPzQwwhdTJe2HZFyrUTYmZMfgDD0y7oHcnAaJv2QQNFWhH5JAZ+9XK6m4nCoGd
         Yf6zKY6Xn4SgNLi155ADjM/w9JteHshrRJj/Qi5ftRc05lG3AB0qHV+X1/BCSiNwtUqW
         tjFg==
X-Gm-Message-State: AAQBX9eJTBIYaZub8vPvQKHrnLgSYI9nix9dW4HEcFoBpnmXxC67v76x
        GP5apJ4YoHxJrnbTr2X07I4+K4nW1Ek=
X-Google-Smtp-Source: AKy350YWzrMqWF4pl+n9fRkWCFtQkvj0SiVoLOuaYN5IBlBVtnvevorIZFsK76vu7PJGUX1zfk7WlA==
X-Received: by 2002:a05:6808:10d5:b0:386:beb3:b30e with SMTP id s21-20020a05680810d500b00386beb3b30emr2951325ois.16.1682064369477;
        Fri, 21 Apr 2023 01:06:09 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id p82-20020acad855000000b00383ef567cfdsm1432330oig.21.2023.04.21.01.06.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Apr 2023 01:06:09 -0700 (PDT)
Date:   Fri, 21 Apr 2023 03:06:07 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        linux-man@vger.kernel.org, groff <groff@gnu.org>
Subject: a straw-man `SR` man(7) macro for (sub)section cross references
 (was: [PATCH v2 2/9] regex.3: improve REG_STARTEND)
Message-ID: <20230421080607.lhdposucfzwgeerm@illithid>
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
 <5ae22853ab58af90c0ec2685bb740af1f6177dfe.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
 <20230420100059.hdtey45vpaytjcvg@illithid>
 <ooclowvlja44cqpomwmenrleernvsbsqfsmq7g5jydylbcptw2@4uys4qxjnnyy>
 <20230420183300.nsw4lh2c27lwsnrs@illithid>
 <4045b975-c79d-a2b5-f180-fcdafe7290a1@gmail.com>
 <20230421050056.i2tuhdovzczap7z3@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="6ybhh52d2zorfuxk"
Content-Disposition: inline
In-Reply-To: <20230421050056.i2tuhdovzczap7z3@illithid>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--6ybhh52d2zorfuxk
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[self-follow-up; updated subject]

At 2023-04-21T00:07:21-0500, G. Branden Robinson wrote:
> 3.  I could implement a macro explicitly tuned to the problem of
>     (sub)section cross references.  I didn't see anybody come up with a
>     good way to shoehorn this functionality into `MR`, so I suggest the
>     following.
>=20
> .SR section-or-subsection-title [page-topic page-section [trailing-punct]

On second thought, I think it would be better to have matched brackets
here.  And more seriously, to permute the argument order to feel more
parallel to `MR` (as well as `ME` and `UE`).

=2ESR section-or-subsection-title [trailing-punct [page-topic page-section]]

Updating the example:

See
=2ESR "Match offsets" . regex 3
=2E
Also see
=2ESR Bugs
below.

In this design, if argument 3 is present, argument 4 is mandatory.  This
would need to be a pretty hard requirement.  Maybe the default section,
if unspecified, would be "UNKNOWN".  This is rude but doesn't penalize
the user any more than the document author does.  (There is also
precedent in mdoc(7)'s setup macros.)  We don't want to `ab`ort page
rendering for these errors because that will adversely affect innocent
users who are simply trying to read documentation.

The foregoing would render as

       See =E2=80=9CMatch offsets=E2=80=9D (regex(3)).  Also see =E2=80=9CB=
ugs=E2=80=9D below.

Regards,
Branden

--6ybhh52d2zorfuxk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmRCQ+YACgkQ0Z6cfXEm
bc6mlRAAr63x5aUYTlktkEtgWMXSLCWVux4YiNKFcrschhgTua0ua5AdP/hK993n
NoE4HSU6umfxNkJzLWhBax0/hV9grXyAQJwn17trv30IGVsFnpaM55fYzkIua/qL
au3J5qwTuE20z5DkmfU3F6ymucoUV/jOsoFxbbNxy4hxpe3zGMJYHlf1iB9uZMpb
G6bU3JH1NgKxcaGBAcmN4zsX3RSSolA9YdiXsgpQW9BDaVMLwMXZ+xNSB5aZ31Fk
W47x9UWaDrh5LmpVE/sgd6HDYjHnapH5YUHoXJhlZmu0lFXAZ+fqdhVfKAt2vuG5
4mNiKgzMD10v9CBsoYEMBve3qm5Vkf3eOePbgMbc7W5B6W/cgrW4O2u+HKAOhpt6
H8OoeGtc3M6fvlZj0KJyKpMHH5mDJmMd0Ai2xq0WozgqO7DNp1qWQeyvOA23IKPD
XLZQj08HarUJKLe2BXxRaIfM1UouajZKASzxFhd+NU8IzJt2+tn/Mwob2NF4YEWY
2H1MSXyVNZbcIP5nP2/zZog1Q7xnwYzZtPS2QJnRkNBMaQ/tZ3wFavJGP3gvl2V1
rp26jsk4lP7fYbA7c9XkBc/f8kFu3iS/OExqGH64Fq51vlM9tv8iyMibV6EOcE2y
LDJr/Z1MEDnzpTkq4acMYcCAXvJthH0w9K7/nOWlwebeBM9bkGI=
=mz4c
-----END PGP SIGNATURE-----

--6ybhh52d2zorfuxk--
