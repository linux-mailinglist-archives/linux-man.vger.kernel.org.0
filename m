Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B61005AE44E
	for <lists+linux-man@lfdr.de>; Tue,  6 Sep 2022 11:32:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234340AbiIFJci (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Sep 2022 05:32:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233100AbiIFJci (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Sep 2022 05:32:38 -0400
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2655C6F56A
        for <linux-man@vger.kernel.org>; Tue,  6 Sep 2022 02:32:37 -0700 (PDT)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out1.suse.de (Postfix) with ESMTPS id CCA7833B3A;
        Tue,  6 Sep 2022 09:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
        t=1662456755; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=JegpcHCXuYbDKMYWQ6vu3GpZv4s5BGAVpA3IJbul0WE=;
        b=J6VDFHnZVHFkgyL8ca9RGSBhKzSgY4v6+sJlU/4Gi6QdGng23MH1xL1jjhtTrQJM8n3/xf
        6uTkT7VUmdAxqKLp/JkLIWzAbjVqXtt70Zmwy3NN4Cg0NsY7xW5EY3E7/MXst6QlqOafJl
        hd7/jq7hXT4egSmIY9yqaf2BY227VPQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
        s=susede2_ed25519; t=1662456755;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=JegpcHCXuYbDKMYWQ6vu3GpZv4s5BGAVpA3IJbul0WE=;
        b=N4EHCsokvEi580CjvLdDrZ86494h2albnpk/f2XXgCX2ya2jPp11WhKxxmB2qMDuu+XL6c
        dXyZYFIdnD6odKBQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id BB9DA13A19;
        Tue,  6 Sep 2022 09:32:35 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id kBrBLbMTF2NObgAAMHmgww
        (envelope-from <jack@suse.cz>); Tue, 06 Sep 2022 09:32:35 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
        id EB451A067E; Tue,  6 Sep 2022 11:32:34 +0200 (CEST)
Date:   Tue, 6 Sep 2022 11:32:34 +0200
From:   Jan Kara <jack@suse.cz>
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Jan Kara <jack@suse.cz>, Matthew Bobrowski <repnop@google.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] fanotify_mark.2: Document FAN_MARK_EVICTABLE
Message-ID: <20220906093234.v44g4tbtudtarjvp@quack3>
References: <20220904154639.2623138-1-amir73il@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220904154639.2623138-1-amir73il@gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun 04-09-22 18:46:39, Amir Goldstein wrote:
> Add section about evictable inode marks and example use case.
> Add possible error case EEXIST related to evictable marks.
> 
> Reviewed-by: Matthew Bobrowski <repnop@google.com>
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>
> ---
> 
> Hi Alex,
> 
> This is an update for a new fanotify feature in v5.19.
> Please wait to see if Jan has any commetns before merging.

Besides the mistakes Alejandro already found the patch looks good to me.

								Honza
> 
> Thanks,
> Amir.
> 
>  man2/fanotify_mark.2 | 50 ++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 50 insertions(+)
> 
> diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
> index 2696a803a..757ad9159 100644
> --- a/man2/fanotify_mark.2
> +++ b/man2/fanotify_mark.2
> @@ -153,6 +153,44 @@ If this flag is not set,
>  the ignore mask is cleared when a modify event occurs
>  for the ignored file or directory.
>  .PP
> +.TP
> +.BR FAN_MARK_EVICTABLE " (since Linux 5.19)"
> +.\" commit 5f9d3bd520261fd7a850818c71809fd580e0f30c
> +When an inode mark is created with this flag,
> +the inode object will not be pinned to the inode cache.
> +Therefore, allowing the inode object to be evicted from the inode cache
> +when the memory pressure on the system is high.
> +The eviction of the inode object results in the evictable mark also
> +being lost.
> +When the mask of an evictable inode mark is updated
> +without using the
> +.B FAN_MARK_EVICATBLE
> +flag,
> +the marked inode is pinned to inode cache
> +and the mark is no longer evictable.
> +When the mask of a non-evictable inode mark is updated
> +with the
> +.B FAN_MARK_EVICTABLE
> +flag,
> +the inode mark remains non-evictable
> +and the update fails with
> +.B EEXIST
> +error.
> +Mounts and filesystems are not evictable,
> +so an attempt to create an evictable mount or filesystem mark
> +will results with
> +.B EINVAL
> +error.
> +For example,
> +inode marks can be used in combination with mount marks
> +to reduce the amount of events from noninteresting paths.
> +The event listener reads events,
> +checks if the path reported in the event is of interest
> +and if it is not,
> +the listener sets a mark with an ignore mask on the directory.
> +Evictable inode marks allow using this method for a large number of directories
> +without the concern of pinning all inodes and exhausting the system's memory.
> +.PP
>  .I mask
>  defines which events shall be listened for (or which shall be ignored).
>  It is a bit mask composed of the following values:
> @@ -409,6 +447,18 @@ is neither
>  .B AT_FDCWD
>  nor a valid file descriptor.
>  .TP
> +.B EEXIST
> +The filesystem object indicated by
> +.I dirfd
> +and
> +.I pathname
> +has a mark that was updated without the
> +.B FAN_MARK_EVICTABLE
> +flag,
> +and the user attempted to update the mark with
> +.B FAN_MARK_EVICTABLE
> +flag.
> +.TP
>  .B EINVAL
>  An invalid value was passed in
>  .I flags
> -- 
> 2.25.1
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
