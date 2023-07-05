Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05A3F748597
	for <lists+linux-man@lfdr.de>; Wed,  5 Jul 2023 15:59:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232404AbjGEN7h (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 5 Jul 2023 09:59:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232320AbjGEN7h (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 5 Jul 2023 09:59:37 -0400
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E16210D5
        for <linux-man@vger.kernel.org>; Wed,  5 Jul 2023 06:59:31 -0700 (PDT)
Received: from submission (posteo.de [185.67.36.169]) 
        by mout01.posteo.de (Postfix) with ESMTPS id CD6E7240028
        for <linux-man@vger.kernel.org>; Wed,  5 Jul 2023 15:59:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
        t=1688565568; bh=5r8dy2iT7u6tcmjJDCcC63rK81421QhR3NSfRRLzNcs=;
        h=Mime-Version:Content-Transfer-Encoding:Date:Message-Id:To:Cc:
         Subject:From:From;
        b=gm+yc87VQ66HdZ0+rWeDN/Mbt9JPWJpUQ38/K/kmpeClAbCuS8xZgFmDD57RkHBoW
         +Oq9Mn4AouQWDgGoKPbW3DCbq6XgEhl/ou77om2UTJyjYjzlS7rSQ//0hGAfZTqAxx
         08mwyh6CGH1/QeGJbDEaJTyLmzM5NMsGfQXxfjYYFoIV2lmISsPNBbQBPAWWeX6dDf
         J2GTdKCzvXazsTul6qb4yVSzzLqRtuQhPmIf+8AT8QOoFQNLui2Tq5qlpXPHOjpf66
         ngKNqqeqk54sHjf+RTE52bBMjX/AEQvIMgSxKp75ZREgRn+Mt+NG/cSOFkJypQ3+7g
         iXB1pVCTPMVXA==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4Qx1Vm2H1hz9rxD;
        Wed,  5 Jul 2023 15:59:28 +0200 (CEST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Wed, 05 Jul 2023 13:57:53 +0000
Message-Id: <CTUAI5KRV29O.19BHQPHOW5Y4@morphine>
To:     =?utf-8?q?=D0=BD=D0=B0=D0=B1?= <nabijaczleweli@nabijaczleweli.xyz>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     <linux-man@vger.kernel.org>
Subject: Re: [PATCH v2 2/2] statvfs.3: note f_favail = f_ffree on Linux
From:   "Tom Schwindl" <schwindl@posteo.de>
References: <3a449220b1a5b1d0be1749a98e5c284222072427.1687553930.git.nabijaczleweli@nabijaczleweli.xyz> <xve2ekfim2chw5s47wf76wtnan3khk5d4jdow4jkmlt7ifa2oy@uicda22mmppt>
In-Reply-To: <xve2ekfim2chw5s47wf76wtnan3khk5d4jdow4jkmlt7ifa2oy@uicda22mmppt>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat Jun 24, 2023 at 2:39 AM CEST, =D0=BD=D0=B0=D0=B1 wrote:
> Quoting myself from #musl:
> 01:59:40 hm, I think this was just invented for symmetry with bfree/bavai=
l
> 02:00:46 FFS has minfree for space but nothing equivalent for inodes
> 02:32:31 (this is mirrored in ext4;
> 	  a global grep over DragonFlyBSD and the illumos gate
> 	  showed just NFSv3 forwarding from the server;
> 	  OpenBSD always sets it to the same thing as f_ffree;
> 	  oddly, NetBSD /does/ calculate it differently
> 	  for LFS and FFS but due to queued writes or
> 	  w/e not because of root reservation;
> 	  and as expected a lot of "/* what to put in here? */"
> 	                       and "// XXX same??")
>
> Link: https://lore.kernel.org/linux-man/f54kudgblgk643u32tb6at4cd3kkzha6h=
slahv24szs4raroaz@ogivjbfdaqtb/t/#u
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
>  man3/statvfs.3 | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/man3/statvfs.3 b/man3/statvfs.3
> index b1f0e7545..272ee5391 100644
> --- a/man3/statvfs.3
> +++ b/man3/statvfs.3
> @@ -227,6 +227,14 @@ .SH NOTES
>  .BR statvfs ()
>  with the argument
>  .IR path .
> +.PP
> +Under Linux,
> +.I f_favail
> +is always the same as
> +.IR f_ffree ,
> +and there's no way for a file-system to report otherwise.

s/file-system/filesystem/ as that's what's used elsewhere.

> +This is not an issue, since no filesystems with an i-node
> +root reservation exist.

s/i-node/inode/ for the same reason.

>  .SH STANDARDS
>  POSIX.1-2008.
>  .SH HISTORY

--=20
Best Regards,
Tom Schwindl
