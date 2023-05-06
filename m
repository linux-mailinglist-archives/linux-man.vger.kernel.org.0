Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E0696F93B1
	for <lists+linux-man@lfdr.de>; Sat,  6 May 2023 20:52:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229698AbjEFSwY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 6 May 2023 14:52:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbjEFSwY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 6 May 2023 14:52:24 -0400
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2B57160B4
        for <linux-man@vger.kernel.org>; Sat,  6 May 2023 11:52:22 -0700 (PDT)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out2.suse.de (Postfix) with ESMTPS id 57D191FE01;
        Sat,  6 May 2023 18:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
        t=1683399140; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=PdLvxHgLAUY+q5l8d6hMBl53KlOVtp4xt7DnhDsgCxc=;
        b=tb7ymr9IpYutOrCAWfyBVOxwB2YvBLW6JZtcp5z/pk/P1a74/tlLZ3/3yA8le+e49okyXU
        Z0FbVxgCA6QR6jumzG6dRMSA39eGNvupNqWrBLoWu5RyP/k9sh5L8sAjtvePIwRX6XtZfs
        FvzbCnKPuRVdi0Gb32ER7J86EkfTvWM=
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 3495D134FB;
        Sat,  6 May 2023 18:52:20 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id /ZPeCuShVmSCJAAAMHmgww
        (envelope-from <mhocko@suse.com>); Sat, 06 May 2023 18:52:20 +0000
Date:   Sat, 6 May 2023 20:52:19 +0200
From:   Michal Hocko <mhocko@suse.com>
To:     Mike Kravetz <mike.kravetz@oracle.com>
Cc:     linux-man@vger.kernel.org, linux-mm@kvack.org,
        Alejandro Colomar <alx@kernel.org>,
        Vlastimil Babka <vbabka@suse.cz>,
        Lorenzo Stoakes <lstoakes@gmail.com>
Subject: Re: [PATCH] mbind.2: Clarify MPOL_MF_MOVE with MPOL_INTERLEAVE policy
Message-ID: <ZFah48yVd+nCcAP7@dhcp22.suse.cz>
References: <20230505194858.23539-1-mike.kravetz@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230505194858.23539-1-mike.kravetz@oracle.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri 05-05-23 12:48:58, Mike Kravetz wrote:
> There was user confusion about specifying MPOL_MF_MOVE* with
> MPOL_INTERLEAVE policy [1].  Add clarification.
> 
> [1] https://lore.kernel.org/linux-mm/20230501185836.GA85110@monkey/
> 
> Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>

Acked-by: Michal Hocko <mhocko@suse.com>
Thanks!

> ---
>  man2/mbind.2 | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/man2/mbind.2 b/man2/mbind.2
> index d540bbe23..e4a187106 100644
> --- a/man2/mbind.2
> +++ b/man2/mbind.2
> @@ -311,6 +311,10 @@ If
>  is also specified, then the call fails with the error
>  .B EIO
>  if some pages could not be moved.
> +If the
> +.B MPOL_INTERLEAVE
> +policy was specified, pages already residing on the specified
> +nodes will not be moved such that they are interleaved.
>  .PP
>  If
>  .B MPOL_MF_MOVE_ALL
> @@ -326,6 +330,10 @@ If
>  is also specified, then the call fails with the error
>  .B EIO
>  if some pages could not be moved.
> +If the
> +.B MPOL_INTERLEAVE
> +policy was specified, pages already residing on the specified
> +nodes will not be moved such that they are interleaved.
>  .\" ---------------------------------------------------------------
>  .SH RETURN VALUE
>  On success,
> -- 
> 2.40.0

-- 
Michal Hocko
SUSE Labs
