Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 330F8442B51
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 11:04:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229770AbhKBKHI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 06:07:08 -0400
Received: from smtp-out2.suse.de ([195.135.220.29]:55756 "EHLO
        smtp-out2.suse.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230000AbhKBKHH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 06:07:07 -0400
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
        by smtp-out2.suse.de (Postfix) with ESMTP id 947531FD75;
        Tue,  2 Nov 2021 10:04:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
        t=1635847471; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=6wDpBAF3+HpoFPA27leXlWriC+Q8usX83rOKODuLy5U=;
        b=EFYcuX97Q5WBjFSeg1sa6TvTYq8+awdDfPb3J2bek7YmjbfW0KEd3vejD2nDL713ol7zxn
        /3MI7Bq+5ztwS03TcDYzp70p78umwVfMtn/5osfTMRP8qnc7lg1M5OKOLRHOYQV4FlW1ZV
        GDlr7QpjamlGKUkkg7P5wlgyIWp3dG4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
        s=susede2_ed25519; t=1635847471;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=6wDpBAF3+HpoFPA27leXlWriC+Q8usX83rOKODuLy5U=;
        b=nNRBH8KKJj9fMHbYNLgK+9/+KO/SKLzP3WRubYMRQcaG9SAziGswON+DwPb/CVS13Ux+yH
        XIMVLN35LFjQilCw==
Received: from quack2.suse.cz (unknown [10.163.28.18])
        by relay2.suse.de (Postfix) with ESMTP id 7DCE5A3B89;
        Tue,  2 Nov 2021 10:04:31 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
        id 41C2B1E0A2B; Tue,  2 Nov 2021 11:04:31 +0100 (CET)
Date:   Tue, 2 Nov 2021 11:04:31 +0100
From:   Jan Kara <jack@suse.cz>
To:     Gabriel Krisman Bertazi <krisman@collabora.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Amir Goldstein <amir73il@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <repnop@google.com>
Subject: Re: [PATCH v3] fanotify.7, fanotify_mark.2: Document FAN_FS_ERROR
Message-ID: <20211102100431.GC12774@quack2.suse.cz>
References: <20211101200445.399801-1-krisman@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211101200445.399801-1-krisman@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon 01-11-21 17:04:45, Gabriel Krisman Bertazi wrote:
> FAN_FS_ERROR is a new event for fanotify to report filesystem errors.
> 
> Cc: Amir Goldstein <amir73il@gmail.com>
> Cc: Jan Kara <jack@suse.cz>
> Cc: Matthew Bobrowski <repnop@google.com>
> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>

Just one more comment besides what Amir already wrote:

> @@ -599,6 +646,30 @@ field.
>  In that case, the audit subsystem will log information about the access
>  decision to the audit logs.
>  .\"
> +.SS Monitoring filesystems for errors
> +A single FAN_FS_ERROR event is stored per filesystem at once.
> +Extra error messages are suppressed and accounted for
> +inside the current FAN_FS_ERROR event record,
> +but details about the errors are lost.
> +.PP
> +Error types reported by FAN_FS_ERROR are generic errno values
> +but not all kinds of errors types are reported by all filesystems.
> +Refer to the filesystem documentation
> +for additional information on the type of errors that are reported,
> +and the meaning of those errors.

Hmm, I wish there was any filesystem documentation for this :). I think the
only real source of this information is the kernel source code?

									Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
