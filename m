Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4BC06C5F14
	for <lists+linux-man@lfdr.de>; Thu, 23 Mar 2023 06:40:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229639AbjCWFkq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Mar 2023 01:40:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229518AbjCWFkp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Mar 2023 01:40:45 -0400
Received: from smtp.gentoo.org (mail.gentoo.org [IPv6:2001:470:ea4a:1:5054:ff:fec7:86e4])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E6DCF3
        for <linux-man@vger.kernel.org>; Wed, 22 Mar 2023 22:40:44 -0700 (PDT)
References: <CAD66C+aECcWHSogwDygQnHOvDCayHbH2emKrsUhVxkg48KzXfA@mail.gmail.com>
 <6c5593f5-efc0-564d-83fa-430328b31231@gmail.com>
 <CAD66C+Y_b_9j1Oty=kbt2jZywzdVOen4i31ndhqyTTCRp=-xTg@mail.gmail.com>
User-agent: mu4e 1.8.14; emacs 29.0.60
From:   Sam James <sam@gentoo.org>
To:     Mingye Wang <arthur200126@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Erik Pilkington <erik.pilkington@gmail.com>
Subject: Re: [PATCH] feature_test_macros.7: document clang fortify support
Date:   Thu, 23 Mar 2023 05:38:24 +0000
In-reply-to: <CAD66C+Y_b_9j1Oty=kbt2jZywzdVOen4i31ndhqyTTCRp=-xTg@mail.gmail.com>
Message-ID: <87pm90vxd3.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
        micalg=pgp-sha512; protocol="application/pgp-signature"
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--=-=-=
Content-Type: text/plain


Mingye Wang <arthur200126@gmail.com> writes:

> Hi Alex,
>
> It looks like Sam James has already documented level 3 of the macro.
> The attached (no, git send-email is not happy with my proxy setup)
> patch only adds some language related to clang. Here's to hoping the
> system is happy with multipart mail.
>
> I've CCed Erik Pilington, since he is the author of the LLVM-svn
> 352665, the change that introduced __builtin_dynamic_object_size() in
> 2019.
>

The patch looks OK to me in terms of the content, apart from the libssp
mention. libssp and stack smashing protection overall is distinct from
fortification.

SSP is where stack canaries are emitted and their value is checked
later on to see if they're intact. Fortification is where certain
functions are replaced with variants that check the size of their
arguments e.g. dst & src and ensure they're big enough. They're distinct.

> Regards,
> Mingye Wang
>
> [2. text/x-patch; 0001-feature_test_macros.7-document-clang-fortify-support.patch]...

best,
sam

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iOUEARYKAI0WIQQlpruI3Zt2TGtVQcJzhAn1IN+RkAUCZBvmWF8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0MjVB
NkJCODhERDlCNzY0QzZCNTU0MUMyNzM4NDA5RjUyMERGOTE5MA8cc2FtQGdlbnRv
by5vcmcACgkQc4QJ9SDfkZAmqgEA/w0T5oTpUjXxAjqHWZnqDGFCEDYXfgH66uMT
TzCfTygBAKpKaJo8eUHFUjBPExYrbVUYMLDRSFlHVB56Rj3naFQC
=eIfg
-----END PGP SIGNATURE-----
--=-=-=--
