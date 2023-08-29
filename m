Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D078778C255
	for <lists+linux-man@lfdr.de>; Tue, 29 Aug 2023 12:33:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232306AbjH2KdW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Aug 2023 06:33:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234799AbjH2KdH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Aug 2023 06:33:07 -0400
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D94A712D
        for <linux-man@vger.kernel.org>; Tue, 29 Aug 2023 03:33:00 -0700 (PDT)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out2.suse.de (Postfix) with ESMTPS id 96FBB1F45F;
        Tue, 29 Aug 2023 10:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
        t=1693305179; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=qUDExBo4C2QCPHTbE/L/ct/7SY+585f8gpXva/sWvfU=;
        b=dParFzBSuDkzOn4BNDuYqMbh0gW6Cf3bWRAi0InCc5WknaqRbTI7e7FQOhRhbRV3hyOwUA
        VtKmjP9+TXp8s2NyHRTVXUjpwfpVc7xkslFW8ZQVUQFjVeeL3Ihjq9ujVcRp0LnPMhMYnT
        APHM4HbEIQFmHO/cdwN33w5Dd+FNZyw=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
        s=susede2_ed25519; t=1693305179;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=qUDExBo4C2QCPHTbE/L/ct/7SY+585f8gpXva/sWvfU=;
        b=bMypBwuNCbGqQU5b+6+vmqVQXi6/gxNp/NkbUCx8mbKfnH5cBXbDeREO9MpUdk/1TiRlkR
        7OY0LGkHDav5HiDQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 0416113301;
        Tue, 29 Aug 2023 10:32:58 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id P1kzMFrJ7WQxfAAAMHmgww
        (envelope-from <akumar@suse.de>); Tue, 29 Aug 2023 10:32:58 +0000
From:   Avinesh Kumar <akumar@suse.de>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] mmap.2: fix missing text
Date:   Tue, 29 Aug 2023 16:02:56 +0530
Message-ID: <3134171.GIylZMhVn5@localhost>
Organization: SUSE
In-Reply-To: <8be479e0-c851-3442-e6d3-9e3ff39458ae@kernel.org>
References: <20230825155950.17010-1-akumar@suse.de> <7094633.DmTEyPuAzL@localhost>
 <8be479e0-c851-3442-e6d3-9e3ff39458ae@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Tuesday, August 29, 2023 3:13:17 PM IST Alejandro Colomar wrote:
> Hi Avinesh,
> 
> On 2023-08-28 15:28, Avinesh Kumar wrote:
> >> Was this text accidentally lost in some patch, or was it never added?
> >> If it was there once, please add a "Fixes: ..." tag for it.
> > 
> > I am not sure if it was ever there.
> 
> It was never there, it seems.
Thank you for digging and confirming this. I've send the v2 with "Fixes: ...".
> 
> $ git show 090fdddb43 -- man2/mmap.2
> commit 090fdddb4342f92a1dbeba687462f4bcee816232
> Author: Michael Kerrisk <mtk.manpages@gmail.com>
> Date:   Mon May 17 15:31:08 2021 +1200
> 
>     memfd_create.2, mmap.2, shmget.2: Document the EPERM for huge page
> allocations
> 
>     This error can occur if the caller is does not have CAP_IPC_LOCK
>     and is not a member of the sysctl_hugetlb_shm_group.
> 
>     Reported-by: Yang Xu <xuyang2018.jy@fujitsu.com>
>     Signed-off-by: Michael Kerrisk <mtk.manpages@gmail.com>
> 
> diff --git a/man2/mmap.2 b/man2/mmap.2
> index 03f2eeb2c..4ee2f4f96 100644
> --- a/man2/mmap.2
> +++ b/man2/mmap.2
> @@ -628,6 +628,18 @@ .SH ERRORS
>  The operation was prevented by a file seal; see
>  .BR fcntl (2).
>  .TP
> +.B EPERM
> +The
> +.B MAP_HUGETLB
> +flag was specified, but the caller was not privileged (did not have the
> +.B CAP_IPC_LOCK
> +capability)
> +and is not a member of the
> +.I sysctl_hugetlb_shm_group
> +group; see the description of
> +.I /proc/sys/vm/sysctl_hugetlb_shm_group
> +in
> +.TP
>  .B ETXTBSY
>  .B MAP_DENYWRITE
>  was set but the object specified by
> 
> >> Also, proc(5) was recently cut into little sashimi pieces.  You want
> >> to refer to proc_sys(5).
> > 
> > Ah.. Thanks for pointing this out, I just checked that thread. I'll send
> > the updated patch if you are fine with no "Fixes:" tag for this.
> 
> Please add a Fixes mentioning that commit above.
> 
> Cheers,
> Alex

--
Regards,
Avinesh


