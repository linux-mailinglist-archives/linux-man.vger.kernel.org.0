Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D072C7DC3B4
	for <lists+linux-man@lfdr.de>; Tue, 31 Oct 2023 01:52:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229990AbjJaAwP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Oct 2023 20:52:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230204AbjJaAwO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Oct 2023 20:52:14 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F24E9E
        for <linux-man@vger.kernel.org>; Mon, 30 Oct 2023 17:52:12 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FDBBC433C7;
        Tue, 31 Oct 2023 00:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698713531;
        bh=gT2Eaz6K8ssBUQmgQprUYBkhACpUNOpT0e/2DCrlzRs=;
        h=Date:From:To:Cc:Subject:From;
        b=i3LAwUQRghH6fzyLdTnwKHRjeAxj/mCPPH5g19P+NuTQOJR0QSdyoipDQ5Jq60CSY
         Hn48apr1nEE9a7tFARoOsi7epemE9h4hAa5UUFDiOYFrKYavAh7cj2zWcUQM/vXowH
         l0MJ++Hu/NLRn1lKXcntWNW5FKYERHVV9ugiwCRgGi/u6PwM5ZJry0VWFPlti+FMwg
         CwLrHLWETU+yZXPwbQw3YhTHdJN4BWHwaoOCjt0KNQbRKelbyH8qbvnpAe6EoR4UGk
         QSVUbPWO9ukWLMO/A63fzn+aki/EEU5IOCYGLBPBArDBDQ7mxVXfgZRf6oTcvEtHaD
         08uKj7qAs0Etw==
Date:   Tue, 31 Oct 2023 01:52:01 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Linux man-pages <linux-man@vger.kernel.org>,
        "G. Branden Robinson" <branden@debian.org>
Cc:     Ingo Schwarze <schwarze@usta.de>
Subject: s/PP/P/; s/LP/P/
Message-ID: <ZUBPuIHKqCPzUChl@debian>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="67YzhYM7uWWfqOm3"
Content-Disposition: inline
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,TVD_SPACE_RATIO
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--67YzhYM7uWWfqOm3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 31 Oct 2023 01:52:01 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Linux man-pages <linux-man@vger.kernel.org>,
	"G. Branden Robinson" <branden@debian.org>
Cc: Ingo Schwarze <schwarze@usta.de>
Subject: s/PP/P/; s/LP/P/

Colonel Kang,

Done.  Can you believe there were uses of LP in the project?
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dc6d039a3a6edcffa325c584d9942fc64560c32e1>

Cheers,
Kodos

--=20
<https://www.alejandro-colomar.es/>

--67YzhYM7uWWfqOm3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVAT7EACgkQnowa+77/
2zJl5w//Yi4jqhTSUAgz/LGTZhXThlienLcn+azTp1f63lDhcI7cdPY6k4IGYLTo
43lrugqFuTMkmkronRCJWJZRgHRZ0L3lybPw2cmIZDrI4z70WJJVpfd9nMCKIUYN
mrz/CMD5JXVYh1m4H8b+8E8OKOUlchi0r31A4b5EgBO+gCXC6gtJ6f+ynNc7O54e
uaaOXIZte6aRGHciCiR4m3/ggNgM1JVn4pWveSYhn7BhZCV0w6DVS8OWc8WDr5rJ
JFrFExFPiyE1sO94SOqGLxLrcqQ9FhacbPmicdHQZnEbN9n1bQuPhPDuDg3UubEd
X8MRieKo8epDldqGN9tSci9HTshzl0FO2hmT9LwSNcCk2JIuGranpc2xnFNa7iO/
8MTv9TQ43HjKfygzwMlW0P7JTGNRH4RRhjg05IsuGtDbByia6ZCe9nr9VFlgs53Y
vobDCYiLNdHIBYvOcO5C/DQvOTGCf646gQmKpX5mA+1BCPDFB3radjS7BFNqBRf3
0qIu7nGR/wOzQerZ0JY3r6KXjrfBMm9wz8kcA0QjonD/DozVagvBAfn1GGO3nyhQ
M841Ft2bB8294Fk8HKQlNRsidrqFHQCj05UPbaAR7eRim0R1og8+Is/WnVdubHTp
rNC543BFh1GcM0nVkWszqYjCJcFiOD8eYPikx/rxahJiBJFxkXo=
=h/kj
-----END PGP SIGNATURE-----

--67YzhYM7uWWfqOm3--
