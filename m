Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ACA00690FF6
	for <lists+linux-man@lfdr.de>; Thu,  9 Feb 2023 19:10:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230006AbjBISKI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 13:10:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229742AbjBISKI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 13:10:08 -0500
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EAC864642
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 10:10:06 -0800 (PST)
Received: by mail-ot1-x333.google.com with SMTP id p24-20020a056830131800b0068d4b30536aso785476otq.9
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 10:10:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I3L4CQMdkdkhQkDQ0fUo1F7y3YrK9EGzfFxZSkb1vE8=;
        b=IbDn5G2my3iNgLUpp4HoF8WTLDRL9LSIcebg1RgUP3f0l2MISIhz7+xwDYA+t5fInd
         rKOk0otwYKroBHfHNitCdjrqEJ57ZmcbjyMVijMj1MJKuZKQKa0A80IyPYisPywG05kY
         e/DblPYtLSXC8HUXF9uapjpXTKFnTy2UsBLoBGZdl+6TapfmEA7O6Y5/FDH7paaYuHR3
         Kw5Zs1Iy9beTD00R7cLOIDGemLl9X94e1d5XhmpXERUWVTws2R/Fq6EAgUS2OzwITdYw
         smJtZVWeCB0ZeoKRToTfu91FShC1f9fGcQNC07KhL32CUktamLJDi8r1TZHN9I+mG31R
         oBmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I3L4CQMdkdkhQkDQ0fUo1F7y3YrK9EGzfFxZSkb1vE8=;
        b=K9BU/PadUVRBNIoWEPsjLYN6mWPSQsleSOkCOyY2iZ1F6pQpULJbsfvPr9UTwbLJbE
         WgUAb0YDN4MNqpf24Q7tQWeu/+RzJi9JK05oQKmDQd5O+/sgKS34AFYfgvRddsrDP8FZ
         Kh5SoxklUDBU/vUPnfY5fHh9VSejnaVS4U9bk9i3+J97JDvOAr6GohWORyLZcZEvndxr
         UGJ7kG8kWa7fFH9hk+Tb2yNS8pocLYu4EB385Ve7yObqiBE7FRZAs56RpiAfxNGFUgCX
         CSwcon5l/t4Fdxayux1aROPYZfgu5VI4oNwJZDGqKc9huZsNfakRMjROdNeEtJ7H5ob9
         3AYw==
X-Gm-Message-State: AO0yUKXSRE2qnd6VToOpbxNHMX4QgMBMhCl9cfadqBO7q0LgJuHtEqDp
        g7qWO8ubdzEFDDOTsI0NNLEySce4lhM=
X-Google-Smtp-Source: AK7set+0SfyFyRcYGKqjLImcXibhDHbX+fiVrt0QcAQSQ3jqk5nUJlblNm4lE7VuG/aLt9ZMUxwV2w==
X-Received: by 2002:a05:6830:1d89:b0:68b:dedb:8049 with SMTP id y9-20020a0568301d8900b0068bdedb8049mr6915062oti.20.1675966205933;
        Thu, 09 Feb 2023 10:10:05 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id o19-20020a9d6d13000000b00684ccbfe012sm1000823otp.27.2023.02.09.10.10.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 10:10:05 -0800 (PST)
Date:   Thu, 9 Feb 2023 12:10:04 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 07/20] close_range.2: srcfix (~ -> \[ti])
Message-ID: <20230209181004.qrzteqmrr255ybjz@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="j6qxjwrkbt6l7rep"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--j6qxjwrkbt6l7rep
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Use correct *roff special character for ("ASCII") tilde.

There are other occurrences in bpf-helpers.7, but those will have to
await improvement of the tool that generates man(7) from the source
language.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man2/close_range.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/close_range.2 b/man2/close_range.2
index dd9406ddc..9dd7ccb8a 100644
--- a/man2/close_range.2
+++ b/man2/close_range.2
@@ -102,7 +102,7 @@ File descriptors can be closed safely using
 .in +4n
 .EX
 /* we don't want anything past stderr here */
-close_range(3, ~0U, CLOSE_RANGE_UNSHARE);
+close_range(3, \[ti]0U, CLOSE_RANGE_UNSHARE);
 execve(....);
 .EE
 .in
@@ -123,7 +123,7 @@ the current maximum number of file descriptors allocated
 in the caller's file descriptor table
 (the common case when
 .I last
-is ~0U),
+is \[ti]0U),
 the kernel will unshare a new file descriptor table for the caller up to
 .IR first ,
 copying as few file descriptors as possible.
--=20
2.30.2


--j6qxjwrkbt6l7rep
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPlNvwACgkQ0Z6cfXEm
bc6M9g//WweBkCqzbiDs7sC+sdZTkG1MLNSwX1iAYPB/SOcjadzboijCfV73J3dE
NwyR5ifV0TtSdtCObXExMRDxZn8/hBTucXes61ws1ObRTWjRM+wsDU1ypMx7auS/
GsLzn3iNvhbgOggYuI1r9djOzQf9XQ3mo2J0ERB0B6qzewDP73gfsg/jAFBga07t
FN1w2shA746EE9PwHeU1OAV5Nho9ktRfEOEWGuDxajeGJMdpSnRHOBekWJ7vqAPW
aqQu7k9oF0pD6hK53WZUpOsdCKzItzgpr6V5Lh/U+We994bFfp30R0SppyfhLugS
3cdIciehO+Xr2iyc9TIq7g3GT4929ZIVG+/EnxCyrAZvnGvQCb/+ujU7Rzy7Lcjx
TLbmhznumzH6gtMIaEj3WqwIPFDH0IFQh+upME42n0lGrUMywlMq9CBpeLqlwcVg
bKIWHoT7Ao01SA+iVggeYynoCE/GBaBaBPVO4ufm40wOnq5WdKUCKbqxxriIuFjp
hDmXVGVJkwsffa5DfI04ic/I+HRBToxoaYXF9L92AVxEYmb/qa7YCniVLZ3ue9I+
20Ps/v0F3tzKS0n92Lcm1Nh7+U++ICMKyKY3124WqcDHCo/syzrLxEDcBfWE7f9y
keTCwi6EgF9Or+HPHNc1Ad6lvZMOYTJxf1dmxTfM7i30IgAwccE=
=T4HS
-----END PGP SIGNATURE-----

--j6qxjwrkbt6l7rep--
