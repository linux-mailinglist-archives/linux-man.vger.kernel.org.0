Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA7D76E0243
	for <lists+linux-man@lfdr.de>; Thu, 13 Apr 2023 01:06:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229869AbjDLXG6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Apr 2023 19:06:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229847AbjDLXG4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Apr 2023 19:06:56 -0400
Received: from relay11.mail.gandi.net (relay11.mail.gandi.net [IPv6:2001:4b98:dc4:8::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 246D3658A
        for <linux-man@vger.kernel.org>; Wed, 12 Apr 2023 16:06:54 -0700 (PDT)
Received: (Authenticated sender: schoen@loyalty.org)
        by mail.gandi.net (Postfix) with ESMTPSA id D3F1E100004
        for <linux-man@vger.kernel.org>; Wed, 12 Apr 2023 23:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=loyalty.org; s=gm1;
        t=1681340813;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type;
        bh=1SiyjX0B5Fkh7PzM/30AYYXrZQJeVUmQqy589HdsTj0=;
        b=eiaVJ/XLSWFbHQiusUb7Uj/B/qjfycpk534LSkH3v1PComBCj4WCWgc2It7bouTljcZYA/
        bOkMDiCDl2qIACXwcRyMIP0V5ykp7xjgKkVDbmaopGelQGAQE4laom/pxd13tAwF15A0vi
        MDA5bo5kHU78Vs+zelguMFcGpy5vmXvWaql0ShYEKS0iAYyevIvpUlNRTi0PfsTxp7A5mG
        9ZqlTXcCrdV+x77782E6n9eAjSNZ7Imq5Nc3i73I6qbOeLx/Hw/J2zDc6JGB8xIDJyelx/
        eJeZOsFH+QLId0rXwio1yaDpbt55mGPl+sLeLvg2q6YrSJ2dm2V58wFoLJ//xQ==
Date:   Wed, 12 Apr 2023 16:06:49 -0700
From:   Seth David Schoen <schoen@loyalty.org>
To:     linux-man <linux-man@vger.kernel.org>
Subject: ip.7 update on treatment of reserved addresses?
Message-ID: <20230412230649.GA2462622@demorgan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

I've submitted a patch a couple of times that adds more detailed
information in ip.7 about how the Linux kernel treats reserved IPv4
addresses.  (There is some discussion already there, but it's not
entirely comprehensive and up-to-date with respect to the current
behavior.)  I'm paying attention to this because I've been actively
involved in efforts to get the kernel to treat these addresses more
permissively than historical standards suggest -- which it indeed
does.

I haven't gotten any feedback on my patch on the occasions when I've
submitted it, so I thought I'd ask directly whether anyone is
interested in reviewing it or discussing it, or whether there would
be any interest in expanding the documentation on this point under any
circumstances.

Thanks!


(specifically, Linux now permits you to assign the lowest, or "network",
address on a segment as a unicast address; it has for several years
permitted you to assign addresses from within 0/8; it has for many
years permitted you to assign addresses from within 240/4; and all of
these are also accepted as valid unicast destinations -- none of which
users would assume just from reading RFCs!)
