Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68D9B77A6F9
	for <lists+linux-man@lfdr.de>; Sun, 13 Aug 2023 16:34:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229506AbjHMOez (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 10:34:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229559AbjHMOey (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 10:34:54 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF95D10D7
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 07:34:55 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 4D28162806
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 14:34:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 818AFC433C7;
        Sun, 13 Aug 2023 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691937294;
        bh=ZBQVrDJk5Q4iw8PyGF278Qszk/Ku9ue7ywsEh+Nk1p0=;
        h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
        b=dj0KMDmQN+ag692EFjp5Su6V3ps2PCXF65mxD5mIfPBRW/Ei7bUEPrmMpjAJVMqkB
         aboF/2dpAjFl1fCG28ILDBHmXYjtzyQT0XsfUY5fint/y0lWD07k7mvQSusG/V+3UU
         DDB+++wSdr8bY68wuB0KIux7Od8ogH3P/fZyzUbvTd7oxrat4Y+WqZlnKKPLxenID2
         Gti4SR/Jw3ofdgnBr2oCwpgNK5QV3wO4Nw+/kGhDXt2xJR/3eA7/4holgqqQDVTgeY
         ybeYQEWS4cK8nDrYCyTYofaaV1vUe3sGGQTWl9PIDg3Iq0tX/9GUb9EY8Iv+j/7wV2
         dHDiRGrA5U/zg==
Message-ID: <c4f49a83-e018-326e-da4e-57dc9e61912f@kernel.org>
Date:   Sun, 13 Aug 2023 16:34:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: [linux-man book] Fonts from a library (was: PDF book improvements)
From:   Alejandro Colomar <alx@kernel.org>
To:     Deri <deri@chuzzlewit.myzen.co.uk>,
        linux-man <linux-man@vger.kernel.org>
Cc:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        groff <groff@gnu.org>
References: <3acefa68-2055-1978-da55-cc4f66cdd255@kernel.org>
Content-Language: en-US
Organization: Linux
In-Reply-To: <3acefa68-2055-1978-da55-cc4f66cdd255@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------7zfgAI5RNLQfUncQDuv2VhiS"
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------7zfgAI5RNLQfUncQDuv2VhiS
Content-Type: multipart/mixed; boundary="------------01x0XOnrHrwjCwF4vOmFMwK8";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>, linux-man <linux-man@vger.kernel.org>
Cc: Brian Inglis <Brian.Inglis@Shaw.ca>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>, groff <groff@gnu.org>
Message-ID: <c4f49a83-e018-326e-da4e-57dc9e61912f@kernel.org>
Subject: [linux-man book] Fonts from a library (was: PDF book improvements)
References: <3acefa68-2055-1978-da55-cc4f66cdd255@kernel.org>
In-Reply-To: <3acefa68-2055-1978-da55-cc4f66cdd255@kernel.org>

--------------01x0XOnrHrwjCwF4vOmFMwK8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Deri,

Is there any chance we could use a font that is installed with the
system (Debian would be good)?  I'd also like to be able to remove the
font from our source repository, if possible.

Cheers,

Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------01x0XOnrHrwjCwF4vOmFMwK8--

--------------7zfgAI5RNLQfUncQDuv2VhiS
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTY6gsACgkQnowa+77/
2zI1xBAAjXvKMifezKHOylhWfkThyiAjFg7+lr0LmexVA/EuSA66pyoUa3fpmncn
J0fP5SMCakBQCFF4MuJlS0/FWfjnsovn33DL1GeHhUa05bIXINYUeb4jpENpcQZH
fd1/poNziHIzHacl4uyZHCE1B+fWaRj1rWhCRNKbZuFVuNOnZ//1UUpOKybIGdlP
7HCNoSLQFA4OosuBkSi41xyT83BA+Z1rswvWVVBUlvlHY9RFdii59/v4qd9j3j3V
egIn84mGQ7pudhAzuZyxSy/f7Jf2TgXXB9MSBGdmWAzwX09vkVx/6yHI1GSrazv5
r6svU+p6a4q8DgoRq18vVZElOtB/ldJP4eVxujdf0NLTzMvq8O6zoCGncHnemtVn
obu2XBzO0TEekuyQ6DYTG/rK5eNaJZrHWvsf7WXd9ywBgDWkzOOn9W8AaylxpKdb
SRQB7+pnsebohdYs13pPWrnyVpMqYZ1g/Oho3FSTk8CTTdbk/3tKdmuGVy6yHkT0
+XV8cZtGHoKkj2IQJPyTlh7IzWQ3FVl+PgmlX1g0ha+XGZXnlaL/VYBrXgnslzbw
ZjmDnBguQgXZh+MRvWHVm5fSR8evvSWqYeiS59Rt1+xj1BTgzoEKHbQwIeorerQj
Daj1Zaq/GEJAUSmwZ25KOaxhwqAry+8KcQvBmH2JyfE/vvwyZAY=
=v8L4
-----END PGP SIGNATURE-----

--------------7zfgAI5RNLQfUncQDuv2VhiS--
