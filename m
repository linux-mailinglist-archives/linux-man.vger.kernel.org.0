Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE25557FC69
	for <lists+linux-man@lfdr.de>; Mon, 25 Jul 2022 11:28:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232399AbiGYJ2k (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 Jul 2022 05:28:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232340AbiGYJ2j (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 Jul 2022 05:28:39 -0400
Received: from stravinsky.debian.org (stravinsky.debian.org [IPv6:2001:41b8:202:deb::311:108])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7829114092
        for <linux-man@vger.kernel.org>; Mon, 25 Jul 2022 02:28:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
        s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description;
        bh=HT0qsLw9somFyhp6vLzy4ZuqpfDT4R9ZHNY2VpveVGU=; b=QvCK+bkZc9iQmYxGiEVPZq6oxa
        o8/WbH+uKuGGB07eudTJmCfBaT6zXk3L1FvPUqLAybk6nMPv2dzH1KnehoS0II5P5u1TVhlfJf0ev
        mDsuq2eiCo+ZZo9dkz/o4hgkWIb0hV1X6OKtXLPoeugCDeg/++9EWnt/IA+HMqZlWKzRDku2EXuio
        flZjKkZ2y7Y52HGsk5dMqwPjsJ1xRw2/ol2H7GdjZX2NQuGycHPIZxsuS3tpiz2IVV6CMYsW+xcqE
        O8GYssYEdxX79a67CnBqi0+weVvRXb6yRPKsCK/Wfm12IIR5KSKEGChH4ruTDGaSVtFvXZ2QIKTZZ
        JEVGjvlA==;
Received: from authenticated user
        by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (Exim 4.94.2)
        (envelope-from <cjwatson@debian.org>)
        id 1oFuO9-00F9Wi-Ex; Mon, 25 Jul 2022 09:28:33 +0000
Received: from ns1.rosewood.vpn.ucam.org ([172.20.153.2] helo=riva.ucam.org)
        by riva.rosewood.vpn.ucam.org with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <cjwatson@debian.org>)
        id 1oFuO7-00CMrZ-Qy; Mon, 25 Jul 2022 10:28:31 +0100
Date:   Mon, 25 Jul 2022 10:28:30 +0100
From:   Colin Watson <cjwatson@debian.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Ingo Schwarze <schwarze@usta.de>, linux-man@vger.kernel.org,
        g.branden.robinson@gmail.com, man-db-devel@nongnu.org
Subject: Re: Linux man-pages Makefile portability
Message-ID: <Yt5iPprqbVjiQRy6@riva.ucam.org>
References: <d8646de0-e4f0-3d4b-e763-92355162a405@gmail.com>
 <Yq+P39bpy2QEeaSd@asta-kit.de>
 <8b9daa0e-6f08-dd55-5772-51f5052ed8bb@gmail.com>
 <YrB66rgFZqryrmpt@asta-kit.de>
 <6e294373-2661-286c-09c4-e67cd84103d7@gmail.com>
 <fdde7402-5e69-b6ff-60fc-74ad9c9054f1@gmail.com>
 <YtrXbDo5NVxNT/cb@asta-kit.de>
 <80553a14-8f39-d4ad-def3-35d6551a31f3@gmail.com>
 <Ytw65nGl1qouSU5R@asta-kit.de>
 <ff01b98c-563f-dfd3-4996-65ff5e5f44ce@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ff01b98c-563f-dfd3-4996-65ff5e5f44ce@gmail.com>
X-Debian-User: cjwatson
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,
        SPF_NONE,UNPARSEABLE_RELAY autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, Jul 24, 2022 at 01:09:23PM +0200, Alejandro Colomar (man-pages) wrote:
> [TO += Colin; CC += man-dv-devel@;
> there's a bug in man(1)'s autocomplete]

man-db doesn't ship its own autocomplete code at the moment.  This is
probably shipped by some other package in your distribution, although I
don't know exactly what that would be (maybe bash-completion?).

-- 
Colin Watson (he/him)                              [cjwatson@debian.org]
