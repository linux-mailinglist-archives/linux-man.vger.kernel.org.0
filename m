Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 910C15AE4B8
	for <lists+linux-man@lfdr.de>; Tue,  6 Sep 2022 11:49:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239173AbiIFJtD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Sep 2022 05:49:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239383AbiIFJsl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Sep 2022 05:48:41 -0400
Received: from smtp-out2.suse.de (smtp-out2.suse.de [IPv6:2001:67c:2178:6::1d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FEC077E9B
        for <linux-man@vger.kernel.org>; Tue,  6 Sep 2022 02:48:40 -0700 (PDT)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out2.suse.de (Postfix) with ESMTPS id DDAED1F966;
        Tue,  6 Sep 2022 09:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
        t=1662457718; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=k10VW544cFOPj2XJq0zgu1zA5HpGkVy7gyS543eVU7A=;
        b=dX6zyZx7nM+o2/A8VwmDgKmZ/EYLVsfw7NQdCRw1LlH/MgbHT9PKWR8RYA23Q6Ewi8SmoK
        YkmQSGu7zOWVy8F/77PECnHu8TYMkQDNvLWXB5STWcAafquVnFzOO3bKHY91L3g52oL5yp
        sMfyHcKFl6B/IL+X0Vl1WSAZPA6vZB4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
        s=susede2_ed25519; t=1662457718;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=k10VW544cFOPj2XJq0zgu1zA5HpGkVy7gyS543eVU7A=;
        b=zsP/xIyMXhrBBfKegAwsCk2EeeiiB4cCL/nNgxsVpY1LckYdwq8a2k+YsKZE6IICWVGdOh
        ulOkoEGsmJx4N5CQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id C9ABB13A7A;
        Tue,  6 Sep 2022 09:48:38 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id rCIzMXYXF2OkdQAAMHmgww
        (envelope-from <jack@suse.cz>); Tue, 06 Sep 2022 09:48:38 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
        id 4BC89A067E; Tue,  6 Sep 2022 11:48:38 +0200 (CEST)
Date:   Tue, 6 Sep 2022 11:48:38 +0200
From:   Jan Kara <jack@suse.cz>
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Jan Kara <jack@suse.cz>, Matthew Bobrowski <repnop@google.com>,
        linux-man@vger.kernel.org
Subject: Re: [RFC][PATCH] fanotify_mark.2: Document FAN_MARK_IGNORE
Message-ID: <20220906094838.7tjroxwb4hwy7qrp@quack3>
References: <20220904155113.2623371-1-amir73il@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220904155113.2623371-1-amir73il@gmail.com>
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_SOFTFAIL,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun 04-09-22 18:51:13, Amir Goldstein wrote:
> A new flavor of FAN_MARK_IGNORED_MASK that helps to resolve the
> ambiguity around the combination of event flags and ignore mask.
> 
> It is also more strict in the events and flags allowed to be
> set in a non-directory inode mark mask and it mandates the use
> of FAN_MARK_IGNORED_SURV_MODIFY flag on filesystem, mount and
> directory inode marks.
> 
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>

<snip>

> +.BR FAN_MARK_IGNORE " (since Linux 6.0)"
> +.\" commit e252f2ed1c8c6c3884ab5dd34e003ed21f1fe6e0
> +This flag has a similar effect as setting the
> +.B FAN_MARK_IGNORED_MASK
> +flag.
> +The events in
> +.I mask
> +shall be added to or removed from the ignore mask.
> +Unlike the
> +.B FAN_MARK_IGNORED_MASK
> +flag,
> +this flag also has the effect that the
> +.B FAN_ONDIR ,
> +and
> +.B FAN_EVENT_ON_CHILD
> +flags take effect on the ignore mask.
> +Specifically, unless
> +.B FAN_ONDIR
> +flag is set with
> +.BR FAN_MARK_IGNORE ,
> +events on directories will not be ignored
> +and if the flag
> +.B FAN_EVENT_ON_CHILD
> +is set,
> +events on children will be ignored.
> +For example,
> +a mark on a directory with combination of
> +a mask with
> +.B FAN_CREATE
> +event
> +and
> +.B FAN_ONDIR
> +flag
> +and an ignore mask with
> +.B FAN_CREATE
> +event
> +and without
> +.B FAN_ONDIR
> +flag,
> +will result in getting only events for creation of sub-directories.
> +When using this flag to add to an ignore mask
> +of a mount, filesystem, or directory inode mark,
> +the
> +.B FAN_MARK_IGNORED_SURV_MODIFY
> +flag must be specified.

Perhaps a short rationaly why this flag is required would be good here?

> +Failure to do so will results with
> +.B EINVAL
> +or
> +.B EISDIR
> +error.

<snip>

> +.TP
> +.B EISDIR
> +.I flags
> +contains
> +.BR FAN_MARK_IGNORE ,
> +and
> +.BR FAN_MARK_IGNORED_SURV_MODIFY ,

I think it should rather be "but does not contain
FAN_MARK_IGNORED_SURV_MODIFY", shouldn't it?

> +and
> +.I dirfd
> +and
> +.I pathname
> +specify a directory.

Otherwise the changes look good to me.

								Honza

-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
