Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8AE0D776E7E
	for <lists+linux-man@lfdr.de>; Thu, 10 Aug 2023 05:26:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232165AbjHJD0L (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Aug 2023 23:26:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232413AbjHJD0I (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Aug 2023 23:26:08 -0400
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 684962103
        for <linux-man@vger.kernel.org>; Wed,  9 Aug 2023 20:26:01 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-6bd04558784so438239a34.3
        for <linux-man@vger.kernel.org>; Wed, 09 Aug 2023 20:26:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691637960; x=1692242760;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vjcjCssjDmRzU44uhK82uDXDcZ4QJq/rNRDEuDB4gKc=;
        b=DfxsqL9rs28g6SeistmycXLSD1E+CqZwOGIIlZ7uK7pyvv7sGGISCOGW+nHNdwUDB+
         3TkPLACe2gBtgg/2FveUNXofgJmYwh60tLgoZX+jDrsOjGkmhgMuIpAFXIdjSgZQOyzL
         yjND+cpM5U7KayBz9doxWadKT9UoAerubLV6xzdxhowpzyPVt+MHRvRBl0kjkyZWaWLc
         JaCB0kQZX00NLlqZaHmswJsjLQ3WdxfM9MMJFkHPCd5R4H2ulG+V/vv/dV5Xc+/rGwyN
         lU7UkLZAZMdKLCqXQ8mp7yvN9R5OKj0Ls2ZSRZnRckg7JKHyqPk1HRWM9tHqBjl7YPqN
         qL9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691637960; x=1692242760;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vjcjCssjDmRzU44uhK82uDXDcZ4QJq/rNRDEuDB4gKc=;
        b=UgjEmjAzyelfn0igfsVdPL08MX5Ntw0N4x8yr6QQ5g6LJc+SP5yvRqJL04Lu27VVSh
         JssU5MrYVUyYJl+qFEqGvrwXdeWUdbhOb0JvfoqTO7oOQ3Wjnz3BJ6T2ewl62JpgJNrl
         h87zPtDQz+b97t/QAayMc6rQs2o5LprKv+q6qVcks8bvT9/RkQNOCU+klPduVAbzzDfN
         APGuOwsC5RKYAIotEQ+6CVIhWotDIQnTfClCx4RQ91BsQ21QcsUpfJdkdjbJnnbaGx3Q
         C+wr6X4K3TOXJMsEhCYM/Y3sJuM8b9CvRxJNAraWH20CfgohBGetVpY0C2FZ0966p8B+
         hT+g==
X-Gm-Message-State: AOJu0Yzi9EOAJfq9QnJvKA1Pf023p8vq5dIJfLCmB82Brj14G8hnVSgf
        BqIklelYDnUi7rKRa75vBd+AFN+FbSs=
X-Google-Smtp-Source: AGHT+IFQ+/01mO/fJYXrpi8kamjqWgpz4fot1s/gbNx9F3bEOc3fUEe5L2Rf9yXtJA7ac/3ZoTZKIw==
X-Received: by 2002:a05:6830:4b9:b0:6b9:37e2:76fc with SMTP id l25-20020a05683004b900b006b937e276fcmr1088424otd.30.1691637960226;
        Wed, 09 Aug 2023 20:26:00 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id c2-20020a9d75c2000000b006b95e17fcc7sm287705otl.49.2023.08.09.20.25.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Aug 2023 20:25:59 -0700 (PDT)
Date:   Wed, 9 Aug 2023 22:25:58 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>, Jonny Grant <jg@jguk.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: =?utf-8?B?4p+o?= vs < in hostname man page of hostname
Message-ID: <20230810032558.bkottjfi47b2mi2j@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="rwujamcusoqqij7y"
Content-Disposition: inline
In-Reply-To: <d508ed7b-7dfb-7b72-e052-c918c24bb1bf@kernel.org>
 <93144922-493f-f3e2-f124-59129853c083@jguk.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--rwujamcusoqqij7y
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex & Jonny,

At 2023-08-09T12:16:12+0200, Alejandro Colomar wrote:
> > other times '=E2=9F=A8=E2=9F=A9' .
>=20
> When you see that, the page was written properly in man(7) (or
> mdoc(7)? I expect both produce the same glyph; Branden?).

https://git.savannah.gnu.org/cgit/groff.git/tree/tmac/an.tmac?h=3D1.23.0#n1=
121

At present, mdoc(7) hyperlinks don't render similarly, but I plan to
make them do so for groff 1.24.

Here's an example.

$ cat EXPERIMENTS/use-Lk.mdoc
=2EDd 2023-08-09
=2EDt use\-Lk 1
=2EOs
=2ESh Name
=2ENm use\-Lk
=2ENd demonstrate a hyperlink
=2ESh Description
What do man pages look like with
=2ELk http://example.com hyperlinks ?

use-Lk(1)                   General Commands Manual                  use-Lk=
(1)

Name
     use-Lk =E2=80=94 demonstrate a hyperlink

Description
     What do man pages look like with hyperlinks: http://example.com?

GNU                               2023=E2=80=9008=E2=80=9009               =
          use-Lk(1)

Except for font styling differences, mandoc(1) renders it the same.

At 2023-08-09T11:39:32+0100, Jonny Grant wrote:
> I'd change the groff configuration to generate the web version of
> those UR on man7.org to be <>. Maybe that's just my preference :)

You can express your preference in groff man(7)'s site-local
configuration.  Its installation location for your system is documented
in groff_man(7).

On my Debian system, it's in /etc/groff/man.local.

Adding the following should do the trick:

=2Eif '\*[.T]'utf8' \{\
=2E  char \[la] <
=2E  char \[ra] >
=2E\}

Regards,
Branden

--rwujamcusoqqij7y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTUWL0ACgkQ0Z6cfXEm
bc7QKw//RgNS5I51f2hYIhCeAy4x12CcsWA0B0k4ZnzglaZGgIjn7sAzG72rigu8
nmBSScxS0h0PsHC9b8CwHndnbw8F9LYFc6VYxyKhGFa+HVY+1P6dO7SZgpvzz2vF
uOi5kd074A7sDHAeAI8cpnCaK3vy8Z5bowuCDTtAUr+Wtby6+UwRaiW+7MpPheWJ
m8qftoSboSNy5rZGkNlsX4A/DHsEAr3rXmAdNqezD7rTbCXZVyn5YELTHMNm86un
RbfMbVrBN94SYul72ZRSqqGkNXIwUzUVChP/lQs3SQ+XcJhUnERMnH3g/wP7/+sS
50Yezf0aYGH7+hKY9WREENt443NL6l10Dzlq/2wAzoaFCJ6tJ23TE2/FIKALH6az
4D7vOZwXwp0PGbd6ZhmbBx9B100dk1AFf9JbEduI8ZUJC2x4MwsJCYEg8qYsUt+e
BYFG9+qjFylQ3jEEAFaJ/VVkJWGzUHhqakSWS9BDIbuiEQNs1e0qhVpw0p36BxDE
wQzQw461UrtugFmTZXHNac59XaqASUtjl02KUNffwcpjphJI2nC8s4/9QJBfrVXy
P+xJA21fHB5JAfk2SKMbx7cQEUtxa3zbTbFz6RergrorZ2ZclD3HJscko8UndUJ9
w3ofRQEH1764hVZqgakzAaspZHBuspo3TbGn8/jgtM+r8uj/ynY=
=HsMl
-----END PGP SIGNATURE-----

--rwujamcusoqqij7y--
