Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46415691015
	for <lists+linux-man@lfdr.de>; Thu,  9 Feb 2023 19:12:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229716AbjBISMI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 13:12:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229767AbjBISMF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 13:12:05 -0500
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78E0069513
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 10:11:45 -0800 (PST)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-16346330067so3647134fac.3
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 10:11:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IoP3klo2zw8AUeEyG3fcUZ2PCLE1GPpF1asHBJHh6Nw=;
        b=MnaHb4RHwxll2YJWACcrs+/gSJLBGT/db9Z52SY2VjQH5Ela1nANNpcWrUSROEn+sk
         dOwKthpaKTMXm3F4aAYhDDykZ92b/tqbZxJQ8a8x7LurgLfuMc62/IiwNwIuJzCxDJK2
         NxvHJe1Aan2TfHfUiYcLfm4c3t02u53DzOHWhzccfFAejvqSxRpU6G/bMA0/8yhl/TNT
         rdqdw22WpBMcqiquDAHAxHKsGyjOK3Ffh3A/EbARHfFsNqaOwfP+GGs2K/pyRNZfaBBI
         KlfNMoQbFmXWs8kUEqSVM9hX9J+IZvzxe445b8v26akMnicpWwIEzwMcVmcbSxBP11ZJ
         7kVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IoP3klo2zw8AUeEyG3fcUZ2PCLE1GPpF1asHBJHh6Nw=;
        b=JKlALANIepFA6xybwWEIo1cg5pwhk0XJRAAwEeURBcMTEPp1/n9hn7hrTRF12rrBLr
         o5Zu0F//6/r/1EsfmdnrO0wxLIYEB3dJHaK4+dZt4Ex4JJfdJq5lQlHXdzelwbF0lK90
         3Z1TI8KXEx7GoUWUCNtIZq154fQ1dKXbN092GnRp2e6FciFDcLvMlNGXR7SoAWhMccyI
         8Dgn2z8liLFA43tET7OBI7FOkxn70cEIIharZDI8cUNtBBOWxPwFj+/wJHnDOSG/v3qL
         qLxjCmx8uSmHSSAsNl/u3TJOqWDKRM5vXDXxh/XTW6f8l/mnG6kJwCCivHyCO1o57S1i
         ybRQ==
X-Gm-Message-State: AO0yUKUcHgWrKC3x1taRDxADuda5xfxJ1iq2IGtEigLXDBvVFPTrBxDU
        0ZbQelTHu1f3M7beQn82MdK5e6pWAbM=
X-Google-Smtp-Source: AK7set9cFhbft/7cBALRHOxqUVpNJA0ntS6hJdBxEcXjyzRV3xAg1OnMeWXrgaoc5b6F1CEzIEfrzw==
X-Received: by 2002:a05:6870:a995:b0:16a:784c:8465 with SMTP id ep21-20020a056870a99500b0016a784c8465mr5886037oab.17.1675966304251;
        Thu, 09 Feb 2023 10:11:44 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id h15-20020a4abb8f000000b004f21af81e0csm987860oop.46.2023.02.09.10.11.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 10:11:43 -0800 (PST)
Date:   Thu, 9 Feb 2023 12:11:42 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 19/20] adjtimex.2: Drop dead hyperlink.
Message-ID: <20230209181142.6gmv4ygmbxjtj7wu@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="diqbc3bygqf3wmoc"
Content-Disposition: inline
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URI_DOTEDU autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--diqbc3bygqf3wmoc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

"UNIX and Scientific Computing Services Pages

The information that was previously in this area is out of date.
Please refer to the SCS Confluence Page or contact unix-admin."

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man2/adjtimex.2 | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/man2/adjtimex.2 b/man2/adjtimex.2
index d76ec04a9..c2ee2156d 100644
--- a/man2/adjtimex.2
+++ b/man2/adjtimex.2
@@ -593,8 +593,3 @@ for the leap second to be inserted or deleted.
 .BR time (7),
 .BR adjtimex (8),
 .BR hwclock (8)
-.PP
-.ad l
-.UR http://www.slac.stanford.edu/comp/unix/\:package/\:rtems/\:src/\:ssrlA=
pps/\:ntpNanoclock/\:api.htm
-NTP "Kernel Application Program Interface"
-.UE
--=20
2.30.2


--diqbc3bygqf3wmoc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPlN14ACgkQ0Z6cfXEm
bc6xqw//R41tltcBSEpLhQKsrZh8CxhyKTHjrP7xjeV7e5LTv5UBaCY3cOnmutnh
EPMnEBp5u8Wr/QnJei73oepLfi3/qIOYocKNWRPt/t1Unm6RSwk0NnlgjOGh14t6
elDStt99p9mHKWjSL/izvdoV5MIhpkpeG7aEprLVCjTLjJ9zvFK/++eCSVhDSyo/
BONfBPTIBN3709lfIZfyjsDKiFahco94Y+/ItYYUCa3hgvbTzvyxI2i3itrmrBzD
ejj7S6xGqqmLlKEweA3rDEGgy2i4yGcgDEzn3TQMRGcSxza2HVdDMcADblBN+eo0
tncZy0/cc+EwIbMqCvBhyYU+PWUexN/wBAftHVQ3KpJhjIfpm0VKN150+csUYEHP
GDEb4zxqXDANmk3XDMQtkR8ExxbhISdSyFUoFAEosSk2CTdOJBvGFE4i5VTWR47P
k91g4CYUv84NQiq4QbPdTQ4VTz4msHvPSF3k1KgJ0jhLU/Y7ZHd+s+V+LNiuIams
hyGDAeqZgyYDmFAo8yAyKL5Wpb7X5C+s46CQu2Kuz3FhJvGgEvQqAye5D6cOFfl/
CgSR0ACrBF2SLx3mL3Bg5robmc/UD3Bi/CyqHfe9gQIOQD6lPGFOQIvZELTRkJY3
Xedi0dnV7HwWNaiinv4AWMd4+Rdr3nRDcq98jUHZgoq7A67kdEk=
=hC6d
-----END PGP SIGNATURE-----

--diqbc3bygqf3wmoc--
