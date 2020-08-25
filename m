Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B8B53251800
	for <lists+linux-man@lfdr.de>; Tue, 25 Aug 2020 13:46:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729885AbgHYLpz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 25 Aug 2020 07:45:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729882AbgHYLpe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 25 Aug 2020 07:45:34 -0400
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com [IPv6:2607:f8b0:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 433ADC061574
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 04:45:24 -0700 (PDT)
Received: by mail-oi1-x243.google.com with SMTP id h3so11311453oie.11
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 04:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=P2rsC/WcYffyTBJQEtRbz9XUflwmHwNX5nZDHQVNfAQ=;
        b=cNNTLKXMiMVpxAKz6RQ6ZggNbjpHO7aNckBtdJ/N5HDL/RXR9xBXowPFgvH0W/xylA
         RR28bYdBf5nB8nH5BtJpPRJ17cosv0+eP6Y0zaGMs4R5KiOVy7Ypbhnj4Qwz+Udw9xMb
         O/LOJywdjd436WwEM48eNDioEQjoCcQ8tmOPV9h8KD/pQ/oloEUa0beCMHbnDwZ1rbAO
         jbuiXWDvdEh4iN9QEDd3P0os3BsIkUudLoB08GHz29O+RNgomDXp6CmiqYvzxsvv2Qq3
         N0K454iU0bO47PdCIPYHD+Mg+0PxGP+oQVsxMQiBRQw9zWJF3ZTq9O84VqohVge2iGgL
         +Utw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=P2rsC/WcYffyTBJQEtRbz9XUflwmHwNX5nZDHQVNfAQ=;
        b=qAnrzBRpp0wkphZLb0/jY4ZCIxiLIneIHHSKbulaW8eyrfMM6QNVYCYcjDsO/J8jd+
         Y6N41XDYaXKmOXkrY5hXgDj+qNajmddaBJgFomZKy6xB91ZpuO/VRkaEr4UP/gjDPOwh
         E0AfdyLSGJEtF2W7WvjvGeG7Mfe2JvClceUpk+y900uw5nU6E8AFoI0591K8BRRRXcZH
         /8K9FWWLaCxdKTQcWMMSrXIcjaZn+ptuWoohbgr12UqtLDi+hde/ZsfA+mKiUG8ICJjg
         clSsiDU77qt+DxyK5upyfg27apSVmO2ayC6axa5w80K5G3KzhA0t7fmHg0I7m5pIdreB
         InbA==
X-Gm-Message-State: AOAM531GGeJ8ggWqoG8dFWIDZ5qTCTFYsG7KLEorgAuPsT5hRBtUNpMB
        SQcd874eqt+BqyU7l1RogxTJUkElRMLnT7HN0uNOxYjEp1E=
X-Google-Smtp-Source: ABdhPJx+gMiKvxeZf82aUHu6QklAdeOx+lFsH5SXLCfNnqCTJ+lMWiuCZFPZxys2gjDKVKT06/2/A87O/7XWDgKxqBE=
X-Received: by 2002:aca:fc85:: with SMTP id a127mr738975oii.148.1598355923681;
 Tue, 25 Aug 2020 04:45:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200824080326.5012-1-amir73il@gmail.com> <20200824080326.5012-2-amir73il@gmail.com>
In-Reply-To: <20200824080326.5012-2-amir73il@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 25 Aug 2020 13:45:12 +0200
Message-ID: <CAKgNAkg55kB0PXW6epUs_m0VQLpj=bsvkjAwpmVSuzLrAnwz+w@mail.gmail.com>
Subject: Re: [PATCH 1/3] fanotify.7, fanotify_mark.2: Generalize documentation
 of FAN_REPORT_FID
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Amir,

On Mon, 24 Aug 2020 at 10:03, Amir Goldstein <amir73il@gmail.com> wrote:
>
> With fanotify_init(2) flag FAN_REPORT_FID, the group identifies
> filesystem objects by file handles in a single event info record of type
> FAN_EVENT_INFO_TYPE_FID.
>
> We indend to add support for new fanotify_init(2) flags for which the
> group identifies filesystem objects by file handles and add more event
> info record types.
>
> To that end, start by changing the language of the man page to refer
> to a "group that identifies filesystem objects by file handles" instead
> of referring to the FAN_REPORT_FID flag and document the extended event
> format structure in a more generic manner that allows more than a single
> event info record and not only a record of type FAN_EVENT_INFO_TYPE_FID.
>
> Clarify that the object identified by the file handle refers to the
> directory in directory entry modification events.
>
> Remove a note about directory entry modification events and monitoring
> a mount point that I found to be too confusing and out of context.

If I understand correctly, this patch is just about improving the
description of existing behavior, in preparation for later patches
that describe new behavior (to be added in 5.9), and once you've
revised after Matthew's comments I can apply immediately, right?

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
