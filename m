Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D0C8A6635F9
	for <lists+linux-man@lfdr.de>; Tue, 10 Jan 2023 01:00:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231509AbjAJAAx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 9 Jan 2023 19:00:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234480AbjAJAAw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 9 Jan 2023 19:00:52 -0500
X-Greylist: delayed 497 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 09 Jan 2023 16:00:51 PST
Received: from forward2-smtp.messagingengine.com (forward2-smtp.messagingengine.com [66.111.4.226])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0451FF25
        for <linux-man@vger.kernel.org>; Mon,  9 Jan 2023 16:00:50 -0800 (PST)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailforward.nyi.internal (Postfix) with ESMTP id 39A831943018;
        Mon,  9 Jan 2023 18:52:31 -0500 (EST)
Received: from imap46 ([10.202.2.96])
  by compute3.internal (MEProxy); Mon, 09 Jan 2023 18:52:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pobox.com; h=cc
        :cc:content-type:date:date:from:from:in-reply-to:message-id
        :mime-version:reply-to:sender:subject:subject:to:to; s=fm2; t=
        1673308351; x=1673394751; bh=8ZI5oeFY6qy+YBlHzAJTmrUxp/4pFlx0rMG
        n1hVa7r8=; b=B/cleS/FleA1av2JjZcjUuM6zTatHq0hnEydaGTEoo5SBpWJULY
        5D2ttvu38wMk/oBQKtXGjIOTxBSrKjM9KVGi6wM87B6C1gmZazbNvFn6Vr7hEYAW
        JeKszUYD8Ju7C5HMJn0Uy4hFlOvzgucUH8KpM07yJ1wM2JzrJqmX5WfqgIcLd9Cm
        VTgpiRd9l37fa9o1c3KidXo/wlSfNTwimXIrWucpQGPPNdwWvVULN7qVhsR6jLy1
        u9CISyZSAIlQkoOMtMT9kfag5Ar9x512Grr+BFnkJkLr1/8Jjm2fnb2aDO+wFYFh
        pBY2nVh5uepr0TNkMx+SuWNeD1o768mgxrQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
        :feedback-id:from:from:in-reply-to:message-id:mime-version
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1673308351; x=
        1673394751; bh=8ZI5oeFY6qy+YBlHzAJTmrUxp/4pFlx0rMGn1hVa7r8=; b=c
        1cXK0nuffceXmiKM78IAVtK9x8tgT3S1vjp7fVXr50pv64P266nP5Ub9Y1Rw0OXc
        sVM0tFX2OLqBavipSlYb7zVCEPscrTR0SaIqxkauccsntIKVM6aC/PEIaNR8sD4y
        6ecnVDeMpLNshs5SiJTXc17wMfQdhqpMeSvR1XqNvQuv7QCEOewOLaYUm4f3e4x6
        lqr+GiqxJAYy7nySvilEz9VHstzYQ3qjlqdczHpR5oxOpSyGY+sYJwzQKv4raue8
        hLSBoKFTpo2CMN/gxuPxczX00cz/qqWT/uIETvJZbWkRgOL/IgounIXGETJptiqA
        02H2UqVPLtNwEwFX6y8Jg==
X-ME-Sender: <xms:vqi8YzfA1NrgBMDkITIYW0ZVkQE0bc35CdkLzCTMx056nJxYzmzpJQ>
    <xme:vqi8Y5Nd8X3xGENolb1Z4xujvuXWKurauwiYPKZufdKeJWODYzZBQvSmOIW6ddGtF
    EgdsOnK4OZ8RiPbgA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrkeejgdduhecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepofgfggfkfffhvfevufgtsehttdertd
    erredtnecuhfhrohhmpedfifgvohhffhhrvgihucfvhhhomhgrshdfuceoghgvohhffhht
    sehlughprhgvlhhorggurdgtohhmqeenucggtffrrghtthgvrhhnpeeuleetveegkefhvd
    duvdeugedtfeeltdegueehfeekgffhfedukeeiteduueegtdenucffohhmrghinhepmhgr
    nhejrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homhepghgvohhffhhtsehlughprhgvlhhorggurdgtohhm
X-ME-Proxy: <xmx:vqi8Y8hBuy7VsTOChEArR14bHmpeChapWJ7-i2Ih1mzU6eX69EDmQw>
    <xmx:vqi8Y08eGHwdS6HBeAwuaH40D64mkuUbwWvrB0JwhRkH7LnE2TWcig>
    <xmx:vqi8Y_ullzC2S3ZQ9KNlrjJFYDVWSNKx_Hb_reK2MrhF-i6gqZM8Uw>
    <xmx:v6i8Y9JwPSs2jAkIO32VRVypaywDrCcc4D9wJBSjLc_-XAr36iHGVQ>
Feedback-ID: ia7a14449:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id CDECA2A20080; Mon,  9 Jan 2023 18:52:30 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.7.0-alpha0-1185-g841157300a-fm-20221208.002-g84115730
Mime-Version: 1.0
Message-Id: <18eda7ce-8dc4-404c-bb43-c943829638a6@app.fastmail.com>
Date:   Mon, 09 Jan 2023 18:52:10 -0500
From:   "Geoffrey Thomas" <geofft@ldpreload.com>
To:     alx@kernel.org, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Up-to-date online manual pages
Content-Type: text/plain
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_LOW,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
        SPF_HELO_PASS,T_SPF_PERMERROR autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi folks,

I've noticed that the online manual pages on https://man7.org/linux/man-pages/index.html don't seem to be up-to-date with the latest release of man-pages. They seem to be pre-6.0. Is there another site that has them online (other than downstreams like Linux distros that host their own man pages)? Or is there some way I can help with getting them updated?

Thanks,
-- 
Geoffrey Thomas
geofft@ldpreload.com
