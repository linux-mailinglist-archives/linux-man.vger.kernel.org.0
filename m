Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 327796C9B89
	for <lists+linux-man@lfdr.de>; Mon, 27 Mar 2023 08:51:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229651AbjC0GvN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 27 Mar 2023 02:51:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231778AbjC0GvN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 27 Mar 2023 02:51:13 -0400
X-Greylist: delayed 1161 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 26 Mar 2023 23:51:09 PDT
Received: from 4.mo548.mail-out.ovh.net (4.mo548.mail-out.ovh.net [188.165.42.229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5777119
        for <linux-man@vger.kernel.org>; Sun, 26 Mar 2023 23:51:09 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.108.20.10])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id E7F1C2031A;
        Mon, 27 Mar 2023 06:31:46 +0000 (UTC)
Received: from jwilk.net (37.59.142.96) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.23; Mon, 27 Mar
 2023 08:31:44 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-96R00197e26ba4-84d2-4565-9ea0-3ddfa92eaf2d,
                    BE55D2CBF04B6594F0AE935FF1AD10E47712E018) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.5
Date:   Mon, 27 Mar 2023 08:31:42 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
CC:     Alejandro Colomar <alx.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH] symlink.7: expound upon fs.protected_symlinks
Message-ID: <20230327063142.pdeeemawtssywcqg@jwilk.net>
References: <7hom4rr5yfxcoiwa3hsxlpigcotdhdrdaqaawvuedptmqxs2ny@s2wz5f2c2xjc>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7hom4rr5yfxcoiwa3hsxlpigcotdhdrdaqaawvuedptmqxs2ny@s2wz5f2c2xjc>
X-Originating-IP: [37.59.142.96]
X-ClientProxiedBy: DAG2EX2.mxp6.local (172.16.2.12) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 82e95db1-3406-4738-997d-ac9f2807828f
X-Ovh-Tracer-Id: 4058306217083197405
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 35
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrvdehuddguddtlecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecufghrlhcuvffnffculdefhedmnecujfgurhepfffhvfevuffkfhggtggugfgjihesthekredttddtjeenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepteegvdfgudeugefffedtffeufeetvdfgtdetkeeivefhhfeugfehueeivefgieejnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrdelieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehjfihilhhksehjfihilhhkrdhnvghtqedpnhgspghrtghpthhtohepuddprhgtphhtthhopehnrggsihhjrggtiihlvgifvghlihesnhgrsghijhgrtgiilhgvfigvlhhirdighiiipdgrlhigrdhmrghnphgrghgvshesghhmrghilhdrtghomhdplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheegkedpmhhouggvpehsmhhtphhouhht
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* наб <nabijaczleweli@nabijaczleweli.xyz>, 2023-03-25 22:00:
>-The only time that the ownership of a symbolic link matters is
>-when the link is being removed or renamed in a directory that
>-has the sticky bit set (see
>-.BR stat (2)).

Wait, but stat.2 doesn't say anything about the sticky bit?

Oh, apparently this info was removed in e8ff4f53ab9a7cbd ("Remove 
information migrated to inode(7) page").

>+Only when a symbolic link is in a sticky directory (see
>+.BR stat (2))
>+does its ownership matter\[em]deletions and renames are subject
>+to standard semantics.

That's weird phrasing. What was wrong with the original sentence?

>+Additionally, if the
>+.I fs.protected_symlinks
>+sysctl is set, a symbolic link may only be followed if:

FWIW, this is also documented in proc.5; not sure if we need it in two 
places.

>+\[bu] owned by the user which follows it, or

s/which/who/?

>+\[bu] owned by the same user which owns the directory it resides in.

Ditto.

-- 
Jakub Wilk
