Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21791691017
	for <lists+linux-man@lfdr.de>; Thu,  9 Feb 2023 19:12:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229653AbjBISMO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 13:12:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229616AbjBISMN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 13:12:13 -0500
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89827EB4F
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 10:11:53 -0800 (PST)
Received: by mail-ot1-x331.google.com with SMTP id j6-20020a9d7686000000b0068d4ba9d141so794911otl.6
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 10:11:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=13bN4ZQASCrDEgeY0FJdW1fPPHYqN/3GrEj/dER3uyo=;
        b=ochMzUTpBlPmgHmy5SsrdefLagUmlpeBBRU0cjTZKngXsvHSW4BtUM+w3PawALcBDv
         k5dcKi7VnTJUQSJAXMyGJD0R9x9uwwHTLnFsD3Q/bwRIYvOZeS+Xz9QfPzIgEbXB2HhR
         tiWbYzpcuXG8YV5OdA/+eVfSlAEqBR8By8XvRaJ7gh7PXQLcfdA4/Z9B0lonHnT72QSu
         BEfbPI2Amq/uLu9yPbgpaipVP1fI4hO/8T5d+aQfWK1dhg/PbjDNDILyUbjBnEWwp5b/
         c3/5benOSs5SAoyWnPwdnN/UOHBajZxkgEQv1FaFRkMadX1kX0uDT6Wcqe2/AKCC/gXd
         LGDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=13bN4ZQASCrDEgeY0FJdW1fPPHYqN/3GrEj/dER3uyo=;
        b=2Dkp8KiRT1pN1S7wby5OJ6Jzzs/a4IqSnKCvQww8VYuNOeT6B3H25ZArSwqGGzSyJD
         xYyOvRswTSTiE+UCL9z1lPKnzDvr844paGJj80hcerGiIH1xGUEDFXsboWmf0zrEm/hb
         psRSIpNwzTmaGDB8rbp8z1CSW93GiMx124H9neRa39A0RwDtsA7bYQQTYYDUQ/VPEPME
         ir7TKcD0i0N9pv0BCffEOOj/ok8ZxokOVK8wXqWUJAg0Zdc0MwUfRb7YVR281uclKfrI
         N9RvgoaZ0XCqy92q8UZx68eRo+Y/CDXH0lGZ/evzd61Jk6/9kwBsdEADb6jm/m4u76Dl
         X7Iw==
X-Gm-Message-State: AO0yUKXhcEKWgOhmV4rkTBuGnNNxCpf8wJiU8oSf5wEXB5pQj278dsg5
        hQ+g9OfC9TltJtc+2kPqfbKTRPTu9ds=
X-Google-Smtp-Source: AK7set+zrXP9gzgVsN7GYRR6xmbU0EcToIQsUCVvXaJhmMAP7IH7BdLVVRqceAnRqDOkUJCnAzNlaQ==
X-Received: by 2002:a9d:4549:0:b0:68d:6a22:396c with SMTP id p9-20020a9d4549000000b0068d6a22396cmr6613487oti.3.1675966312142;
        Thu, 09 Feb 2023 10:11:52 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id z14-20020a05683020ce00b0068bb6043362sm1009270otq.11.2023.02.09.10.11.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 10:11:51 -0800 (PST)
Date:   Thu, 9 Feb 2023 12:11:50 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 20/20] adjtimex.2: srcfix
Message-ID: <20230209181150.yev5gc3ge5sgaro5@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ug2ttckuplbpd3ta"
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


--ug2ttckuplbpd3ta
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Stop manipulating adjustment and hyphenation around a table.
* These could be safely done within the text block, but even that is not
  necessary, since what is in the next block is a single word, so no
  adjustment will take place, and to prevent hyphenation of a single
  word, \% is cheap and straightforward.  So do that.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man2/adjtimex.2 | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/man2/adjtimex.2 b/man2/adjtimex.2
index c2ee2156d..6f2c5c313 100644
--- a/man2/adjtimex.2
+++ b/man2/adjtimex.2
@@ -537,19 +537,15 @@ capability is required.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
-.ad l
-.nh
 .TS
 allbox;
 lbx lb lb
 l l l.
 Interface	Attribute	Value
 T{
-.BR ntp_adjtime ()
+.BR \%ntp_adjtime ()
 T}	Thread safety	MT-Safe
 .TE
-.hy
-.ad
 .sp 1
 .SH STANDARDS
 None of these interfaces is described in POSIX.1
--=20
2.30.2

--ug2ttckuplbpd3ta
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPlN2YACgkQ0Z6cfXEm
bc7mYBAAi+5bC/iqTX6212NG5Tn2Kd7zZnf45rdNxn1MWVO+OkE1cTWlDc/o16rS
WvpHKO9cNNH4flPUOKI2Dl/jb/vPH5LXQ3VLiH8KlLAxnsDbKnkCTExM9kJcsEe7
U9/KbuutqBIFy8kAn/73GvVr7U6WJQK/TWTvjArBZbDx2rL1yiT2DIqsSgFS6sfC
kW8e2Mms00NU5TM0hh7STZid74n+38/M5L8/2xH4VJaTwnneRP+gCS7Oum+auE6n
04F4ZPG/fv6AVq4uLISd6jMs75PibAw5btAXwgFPdUp6Psowr5z+RXh06AMIVAs/
nBsL+7A1EmEHiMb7Obdp3YrHtPV8j9oVSVY2xpevxEamQFb7P9ceHBBlp4NpX6uX
xskPxrChrDLsMBx+QWAI1SOyIwCgy+a7wD8wgsADoMsPRtJRy2yfQ5QyZx+S4lJm
6yXGFPIAqwiDnbwJydl4CBNvOhauQ9NkcSd7tVYGCS3Hnzx+YZOtUfqZfAHlcwYZ
zFbT5Pna3cGsYhM0R7JIVVUV4eYjrfnQkbRM/F4RaH/8UzS1btCLzXRHseqX84nr
cbfGzMNTlhQ9R1aJliktEVW/ASWpW+EeZ5kKoRn2vccQe2g6ufQmGKMKISB0IGNF
V4V6PylLZVj8jepsK5d/hQJFHMz4qCiNBrCN+NUE/GP8nCsKO7k=
=34I7
-----END PGP SIGNATURE-----

--ug2ttckuplbpd3ta--
