Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC80F508096
	for <lists+linux-man@lfdr.de>; Wed, 20 Apr 2022 07:29:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358216AbiDTFcR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 Apr 2022 01:32:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231815AbiDTFcP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 Apr 2022 01:32:15 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51EF636176
        for <linux-man@vger.kernel.org>; Tue, 19 Apr 2022 22:29:30 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id n18so820724plg.5
        for <linux-man@vger.kernel.org>; Tue, 19 Apr 2022 22:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=JowUVjQ4Kdq+N/Jz02BFwy8dRMKbXE/YWrb9swfC/n4=;
        b=qnO6xCgz6zRZB97qpEISadeADNnmTK5cFEyENDykdk6Tda85JpQkXZiHT+q3f0LjNx
         +SafUb260edZh55QcdM94BjYDGZaqe7LvhQRegTCdScAAl5/FaftMQ52GIBuADQZt1JK
         WzOFguIe63gwmE4Rp8NIVtpThzk51AbUDdWHwCtRdY4WhyvxbJaRABDJhwCgdKUIYlPG
         tZ2RexuAOA5UHoItYIJHDeEHmuXrOI9uB5zj7XhDapHTPmYUooQ9CR7gI5clZl/NslaW
         WSU3RGkAE36TB5HWw0TAdS6YTKrye5yWEnIRlOkEZqN5HAzvFqI7EvX+UEg/5pWmUSc9
         qQhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=JowUVjQ4Kdq+N/Jz02BFwy8dRMKbXE/YWrb9swfC/n4=;
        b=JxtBmfudVJ3ZoDzqe1miE1cuZT8goN50rxcdKk7Lumv7RbpUp2AAFM7UA1t+EqJ6Yc
         qxeAVLKy7WG9iEu8g/jLuYAj1jjUlJ/VlPPne8GC5xJOsOHYOy+QBEq3t0UZxL8MKupG
         L7W5Rhiqi2If57zZc+f+aDDtXLCI1vqWycgoAJ246U4QUQMSmGBrJ2DSMNvZsE/R/oKR
         orXmD279uTcd3+dJhtAtx3kMyq5psyXLta5yv890Hd/n85CIDJu8egBzxNX6xsaU6MYd
         juHyE+ZZdfcMJq0qrM1YSjL+CPyMTGtiFr9ch4XkEGA7zV1eta+ipKGneGYeb4j6hBTh
         1iew==
X-Gm-Message-State: AOAM531iEKmEP95Fi0lWRPfUqa+mojqup3kt0tKFzIheUgycR912IfDc
        pNCk0PEDa9k3StjgUMpldSnIYK01ICyjjA==
X-Google-Smtp-Source: ABdhPJzSDO4dSCFjawt2pb7e/f9xbBkLJyTrryriJG5jApVrIbF7ceh8/f7qyRNVKn0V9A4J11JBAQ==
X-Received: by 2002:a17:902:d2d2:b0:159:118:e10e with SMTP id n18-20020a170902d2d200b001590118e10emr12281550plc.102.1650432569580;
        Tue, 19 Apr 2022 22:29:29 -0700 (PDT)
Received: from google.com ([2401:fa00:9:211:b252:2efe:7b10:a46b])
        by smtp.gmail.com with ESMTPSA id n184-20020a6227c1000000b0050a3bbd36d6sm17073075pfn.204.2022.04.19.22.29.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 22:29:29 -0700 (PDT)
Date:   Wed, 20 Apr 2022 15:29:17 +1000
From:   Matthew Bobrowski <repnop@google.com>
To:     Gabriel Krisman Bertazi <krisman@collabora.com>
Cc:     mtk.manpages@gmail.com, all.manpages@gmail.com, amir73il@gmail.com,
        jack@suse.cz, linux-man@vger.kernel.org
Subject: Re: [PATCH v5] fanotify.7, fanotify_mark.2: Document FAN_FS_ERROR
Message-ID: <Yl+aLRyguvmfMZZH@google.com>
References: <20220418163933.256771-1-krisman@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220418163933.256771-1-krisman@collabora.com>
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Apr 18, 2022 at 12:39:33PM -0400, Gabriel Krisman Bertazi wrote:
> FAN_FS_ERROR is a new event for fanotify to report filesystem errors
> that might lead to some corruption.
> This documents how to use the feature and specific caveats.
> 
> To: Michael Kerrisk <mtk.manpages@gmail.com>
> Cc: Amir Goldstein <amir73il@gmail.com>
> Cc: Jan Kara <jack@suse.cz>
> Cc: Matthew Bobrowski <repnop@google.com>
> Cc: linux-man@vger.kernel.org
> Reviewed-by: Amir Goldstein <amir73il@gmail.com>
> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
> 
> ---
> Matthew,
> 
> as discussed this is rebased on top of the PIDFD documentation: commit
> 207080c7f7f5 ("fanotify: Document FAN_REPORT_PIDFD Feature")

Looks OK. Feel free to add:

Reviewed-by: Matthew Bobrowski <repnop@google.com>

> diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
> index 9a45cbb77893..0bdee67850fb 100644
> --- a/man2/fanotify_mark.2
> +++ b/man2/fanotify_mark.2
> @@ -203,6 +203,30 @@ Create an event when a marked file or directory itself is deleted.
>  An fanotify group that identifies filesystem objects by file handles
>  is required.
>  .TP
> +.BR FAN_FS_ERROR " (since Linux 5.16)"
> +.\" commit 9709bd548f11a092d124698118013f66e1740f9b
> +Create an event when a filesystem error
> +leading to inconsisted filesystem metadata
  	      ^
	      inconsistent

Alejandro can likely address this spelling mistake when applying this
patch. There's also the early line wrap which I don't quite understand
here...

> +is detected.
> +An additional information record of type
> +.B FAN_EVENT_INFO_TYPE_ERROR
> +is returned for each event in the read buffer.
> +An fanotify group that identifies filesystem objects by file handles
> +is required.
> +.IP
> +Events of such type are dependent on support
> +from the underlying filesystem.
> +At the time of writing,
> +only the
> +.B ext4
> +filesystem reports
> +.B FAN_FS_ERROR
> +events.
> +.IP
> +See
> +.BR fanotify (7)
> +for additional details.
> +.TP

/M
