Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E96EC459384
	for <lists+linux-man@lfdr.de>; Mon, 22 Nov 2021 17:57:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230159AbhKVRAJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Nov 2021 12:00:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229575AbhKVRAJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Nov 2021 12:00:09 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F898C061574
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 08:57:02 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id o19-20020a1c7513000000b0033a93202467so381022wmc.2
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 08:57:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=L2mZRg1AWlUwTOnAkyQVM9F84jJjbWOfpGkN+BnZCe8=;
        b=mthroEFG6GLnDDgyLUmshRaH7r6t78krxhuYW9Fba3pOroLyAN1pvkfZv6cn2Gj/hA
         2ZgcgNnwJy+CM14/v/xbHBUMo0NQ8Gj6VXkVtCDy/S5zneT/Cb+dfn+xmww0LVAqrs9g
         i9XGzv2dy6I1UPGGS7GYZWfS42EP9G50rQH3BWSQbTt2gjmALnfd2f7Qw7ber1AMxrUJ
         IOBQBAW1Nvl4iuSmcRPUGJw576EKHoAeSOYAIW/MRNgInCTNxZGCTOhtG2IDXBHsrQG5
         WPLCI4GRMpYq+ZwAySB9cT0ivvKWlRYMLn66zDC3sAwRqVpw8zYzqK+S7AaJybWVLgOk
         48Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=L2mZRg1AWlUwTOnAkyQVM9F84jJjbWOfpGkN+BnZCe8=;
        b=DoHR2wzqt9kdMlLYifQ2g5ooEEJKle6F2zsIxzlvhJS4TxnSpB3Q6hK25xeSk81sho
         onCW7dRleKqB3jLGrU9pIQFYwqTNTs2MQ7BRA6+P33NPeXKrosiW7/QLflKFKKHLzSD+
         Gr8pw9HnhnP5VmW75D56Z/tSmOkEihUiVrjnX6dw3Io846Cy059fvZ4Up7txvVjJhzNe
         +GX6RvZHrBvExucfSyxPAkT7hcr5YA6KzBn8bArlZZTFBpwPTaqe8uiLzdhknu8FRSIM
         jaBC5u4zyESB5x4IE0j8e/F19rh4sQ3MNPhMrs0rQpFuMpI/TsLpETBetg2lMrZ/Me0O
         l91A==
X-Gm-Message-State: AOAM532ojb2vo7ZOcNvALzLbXEBH3eo0BHAk5bRWz8ONt4TkrhXhSVWS
        2yx29b+hFJry7IAj59FqKN3YUFPGsqo/WA==
X-Google-Smtp-Source: ABdhPJyU8sHDjkzMUgTLZ7EnVIzcOODGn4i/U6w6/mwOkXYikxEG3cLGbEfpucAxgkhZ9aJurUwMzw==
X-Received: by 2002:a05:600c:3b8f:: with SMTP id n15mr31570229wms.180.1637600220863;
        Mon, 22 Nov 2021 08:57:00 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id r8sm12080288wrz.43.2021.11.22.08.57.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Nov 2021 08:57:00 -0800 (PST)
Message-ID: <4c1659ad-dbaf-dccd-95bb-fe224c4c0912@gmail.com>
Date:   Mon, 22 Nov 2021 17:56:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH v2 0/4] fanotify man page updates for v5.13
Content-Language: en-US
To:     Amir Goldstein <amir73il@gmail.com>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        linux-man@vger.kernel.org
References: <20211120171253.1385863-1-amir73il@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20211120171253.1385863-1-amir73il@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Amir,

On 11/20/21 18:12, Amir Goldstein wrote:
> Hi Alejandro,
> 
> This is a re-post of updates for v5.13 that I posted last March [1].
> 
> Thanks,
> Amir.
> 
> Changes since v1:
> - Update comment regarding tmpfs
> - Document kernel commits
> 
> [1] https://lore.kernel.org/linux-man/20210318160817.3586288-1-amir73il@gmail.com/
> 
> Amir Goldstein (3):
>    fanotify_init.2, fanotify_mark.2, fanotify.7: Configurable limits
>    fanotify_mark.2: Update w.r.t tmpfs support
>    fanotify_init.2: Document kernel commits
> 
> Matthew Bobrowski (1):
>    fanotify_init.2, fanotify_mark.2: Document unprivileged listener

Patch set applied.
See some tweaks below.

Thanks!
Alex

---
     fanotify_init.2: Minor tweaks to Matthew's patch

     Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
     Cc: Matthew Bobrowski <mbobrowski@mbobrowski.org>
     Cc: Amir Goldstein <amir73il@gmail.com>

diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
index 7a1c21037..e463372f3 100644
--- a/man2/fanotify_init.2
+++ b/man2/fanotify_init.2
@@ -426,23 +426,23 @@ The user cannot request for an unlimited number of 
marks by using
  .BR FAN_UNLIMITED_MARKS .
  .IP * 3
  The user cannot request to use either notification classes
-.BR FAN_CLASS_CONTENT
+.B FAN_CLASS_CONTENT
  or
  .BR FAN_CLASS_PRE_CONTENT .
  This means that user cannot request permission events.
  .IP * 3
  The user is required to create a group that identifies filesystem 
objects by
  file handles, for example, by providing the
-.BR FAN_REPORT_FID
+.B FAN_REPORT_FID
  flag.
  .IP * 3
  The user is limited to only mark inodes.
  The ability to mark a mount or filesystem via
-.BR fanotify_mark()
+.BR fanotify_mark ()
  through the use of
-.BR FAN_MARK_MOUNT
+.B FAN_MARK_MOUNT
  or
-.BR FAN_MARK_FILESYSTEM
+.B FAN_MARK_FILESYSTEM
  is not permitted.
  .IP * 3
  The event object in the event queue is limited in terms of the information


-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
