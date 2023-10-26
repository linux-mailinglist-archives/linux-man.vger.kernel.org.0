Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F4637D8677
	for <lists+linux-man@lfdr.de>; Thu, 26 Oct 2023 18:09:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230078AbjJZQJc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Oct 2023 12:09:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230340AbjJZQJb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Oct 2023 12:09:31 -0400
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 747211AE
        for <linux-man@vger.kernel.org>; Thu, 26 Oct 2023 09:09:27 -0700 (PDT)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-1ea4a3d0a44so639912fac.1
        for <linux-man@vger.kernel.org>; Thu, 26 Oct 2023 09:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698336566; x=1698941366; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8RHUgPAvacMlKB4ul6PFpX0o5u3wx3DJuck/UNWwLWQ=;
        b=JC205GZ0ZKcs9iTcsvUDIx8U2NJ/yRiazDGppi+D1hzVpgjSIE8CRPirs3nveQg7WN
         Lb/vCxMVHP5oC2/65SWOndjWKu/KU5pwAi4A8BKLk7se299yYtINx9qfp6xwVCEaUG7H
         hl2PDBveiwVZ2pCj964RSCtP7oBe8qTCiYYpW6n5EsUOmLz94qlDAJKjePyhWQYgQ19+
         GytpeM8mKClEdUvncTzi+3YqAX0jCbCj221lLjqMmtHXBXd+dM08Ti750Bxh30OGzr+p
         ySWDC6uypxxtqUpdfD3jnepuAaxEibqLJ+7UoPXJb00aC9j0SpYl8/rY413znaSoECID
         3tLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698336566; x=1698941366;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8RHUgPAvacMlKB4ul6PFpX0o5u3wx3DJuck/UNWwLWQ=;
        b=nnBz8iHAC3CLRZb1HndSNK+vWonsZmym3Nk+0AUOqo2cMpIHq3Ts1CLYfQPBQBCXvn
         6p7Xf7okY9Ef8oVHzQgZ8o1sk0/qZtzjwVjL4e5DEI6Oerh2kuLoI74exULlGgvDZRi9
         QdccXby5Aly7m96Xyded1ldL82YTRRDqmVhyIz2tA+IMbYjaHURi8fyu+FmrHBT5dE3I
         cvpX2lohYhW6JYKuKo9LHfeRDbY4eKEA9dqHrq5sxJVzB14d+wtGPwqjTwu389cw0Ecq
         mNg+praXsUUr4thKHbpGUHOEDCrxNrmEOLInI3ewq4F91Iqq15xt9cnvcN5COqonGw/q
         eQKQ==
X-Gm-Message-State: AOJu0YyQymzOmch0wo0OdAtZUAtrffhDYTS+tTqBvBKRk55gqM/5kZ8/
        iJbwTqJooGJHyR+Xuje0wci0W6pOhYE=
X-Google-Smtp-Source: AGHT+IGb2XrsvBESoKwBPwc6qgiPwH9wuFOqWwvhCcWLL9Lqs0w3yVLGZKpx3hfGX4pOd2TbPcrXxA==
X-Received: by 2002:a05:6870:1004:b0:1e9:edd1:2176 with SMTP id 4-20020a056870100400b001e9edd12176mr18314545oai.33.1698336566451;
        Thu, 26 Oct 2023 09:09:26 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id x6-20020a056870740600b001ea4324364csm3100603oam.12.2023.10.26.09.09.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 09:09:25 -0700 (PDT)
Date:   Thu, 26 Oct 2023 11:09:23 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: Why does man(7) have 3 paragraph macros for the same thing?
 (was: `\c`, mdoc(7), and man(7) extension macros)
Message-ID: <20231026160923.dmqjhapak3zuz3k7@illithid>
References: <20231025185424.txreg7q47zigo24j@illithid>
 <ZTlu2r8N3nrCnMpa@debian>
 <20231026125835.phpfjhz6xbsde33d@illithid>
 <ZTpz3A0yijoxDvip@debian>
 <20231026145140.qyl4lsfhp3644hmh@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="egvfeaaxwcafslce"
Content-Disposition: inline
In-Reply-To: <20231026145140.qyl4lsfhp3644hmh@illithid>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--egvfeaaxwcafslce
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[self-correcting follow-up]

At 2023-10-26T09:51:42-0500, G. Branden Robinson wrote:
> In ms(7), `LP` sets a paragraph that is left-aligned, and `PP` sets
> one with a first-line indentation.
>=20
> In man(7), all (ordinary) paragraphs behave analogously to ms(7)'s
> `PP`.  A first-line indentation is never used.

Sorry, brain fart here.

In man(7), all (ordinary) paragraphs behave analogously to ms(7)'s `LP`.
A first-line indentation is never used.

Regards,
Branden

--egvfeaaxwcafslce
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmU6jywACgkQ0Z6cfXEm
bc7yVg/+K2SQqNbj/PiWaUv5HZJRvrtlQGESmDmvza+YNAf+3n+LA75x108NoNzz
tgsh5GvoQrZNajyfpH878cn4jdq82VaQYlbRjnAsV83UCXo93Bu4GZmgZfFCmgs0
08IrqNlyLz8AaGYwh5HhcW2Qxocky1F/kx+7PczXC0i/EPpFq5aZvbL7U0wGOQ7l
YXQBxZumRyskd1maIh6a6WUXogms/oSYqakpu+zXl0S5eh0qyzDQvJjIOdqVqiLP
wHEOIPhd8lBZT+EeBmc6ANH1Nl8J5qoQE7wN9x7Eztd6GEwNlVYKdt599rlK/GCs
SaiYJbNnLdD1do0MpqR9fhNfUfjCnvVIoApwZn25l8ghiJRPFD7eFx9hkBdImxkW
14VvLXlKCcxC4t5ooVE6LXQ66Z62Wxm9wcyI4UwqzohO7YKT4HRFhPOn0G5F/Cae
MLs90zc9ICF/9o0lBXwNcR3WQbGKE0paVDQhCQvuBNr3z2WtobZdilcc7fWHpjfu
zDs/tuajS3LSXsn1DNPQQPWjbMqVRAdTkFpLp8KLUweopDvuyGrB+Q2+5H5tyOoh
bCSD3XGqcjUSsU0gYdPidR68mkU1rgSK6T5nhj6iDeOWaUzPw0if2IigXNgcdi+V
o5WBAWIs7BvW18b6Yp1B2SqNydUeVaCKi72PEjw8My3oD4P07vY=
=SFLG
-----END PGP SIGNATURE-----

--egvfeaaxwcafslce--
