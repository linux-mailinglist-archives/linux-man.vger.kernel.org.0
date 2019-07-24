Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 04A8C728B5
	for <lists+linux-man@lfdr.de>; Wed, 24 Jul 2019 08:58:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725899AbfGXG6A (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Jul 2019 02:58:00 -0400
Received: from mail-lf1-f68.google.com ([209.85.167.68]:41515 "EHLO
        mail-lf1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725878AbfGXG6A (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Jul 2019 02:58:00 -0400
Received: by mail-lf1-f68.google.com with SMTP id 62so26279107lfa.8
        for <linux-man@vger.kernel.org>; Tue, 23 Jul 2019 23:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=1d2cYVtRNfXhoDjv8bU+LTtbcUOkfsJac60NATuFU3s=;
        b=Zz3v/Tj2HHXkGA0iAT/57xPWSh4su3jrMSHjURm6NSISxWu1CDPT4CEVXoocXNC87x
         gSZL122Tunzd3polqExUKhM80wtqq+tN8pHvvABCpSa+JWjUIsbEBsUHYekxJIIuc5F6
         XYYBhMh1ximQAH5wl8bk8CryPIxWR+HCwgGQvbsFd5KFtNISApJdcuUWizjO0g0JSMQ6
         MpUZl3AosH2B0Iz3LlV/YK/2pjjDMN4vLyOmvTpEZOcCAfSDwpp8Qxy5ek6iCvxFXyvM
         vDtqAC8xfLxAmrDTyTSGZUw75CdIcntIYOXheM6MGGgBgy4JuDHEEkUGXa32vliE8Tr+
         4NqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=1d2cYVtRNfXhoDjv8bU+LTtbcUOkfsJac60NATuFU3s=;
        b=be2Ao5WiNlsJIH6/7nnFZz/aXaSKhX0dgSHuTNfkx8bdvG1LAVCz3HyTd7Ft5gyASd
         z/6P+mK1oW619i7vbXC9yksi2aY3RmcZHFVQ5mqJlEr6DjpeqDyPUFC+2WGhel9N7YMs
         8BlNo7ykfcAC/E0jfC/VlqV0Fk79jY6v4vzsOryo2aqk1YfBnXYSJpOk4VEwE1ML85YN
         Nd3DDOkNd2SguFtwVhOMqHSmiE7JPqRXavoiKljOc0TdGguH5pB8nn1R4sx29wGwj9zh
         BXd0zYzlSCLn2UAlv20pjv7hmnkZmsx+UFIwFs+khkJq1mMAndJ42iwOEEHDpS+LDxrp
         ydHg==
X-Gm-Message-State: APjAAAWmmsaCR5roz0AENgNrGdqBSxR6tCtPvmTU026RQ6ksl6QSV5ds
        CVvRYEHJvEuGNl2+TPrlatbY1E21
X-Google-Smtp-Source: APXvYqxKAzA6GFswAZQ07HwYRbAJLp9L+WszuG/biYBgcWr99mbc4rjfxZnuC/BnUgPFscNO+TtouQ==
X-Received: by 2002:ac2:44c5:: with SMTP id d5mr38350913lfm.134.1563951477863;
        Tue, 23 Jul 2019 23:57:57 -0700 (PDT)
Received: from uranus.localdomain ([5.18.103.226])
        by smtp.gmail.com with ESMTPSA id k27sm7708312lfm.90.2019.07.23.23.57.57
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 23 Jul 2019 23:57:57 -0700 (PDT)
Received: by uranus.localdomain (Postfix, from userid 1000)
        id E6363460775; Wed, 24 Jul 2019 09:57:56 +0300 (MSK)
Date:   Wed, 24 Jul 2019 09:57:56 +0300
From:   Cyrill Gorcunov <gorcunov@gmail.com>
To:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        john.stultz@linaro.org
Subject: Re: [PATCH v2] prctl.2: correct the wrong message about
 PR_SET_TIMERSLACK
Message-ID: <20190724065756.GK4832@uranus.lan>
References: <1563951143-2300-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1563951143-2300-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Jul 24, 2019 at 02:52:23PM +0800, Yang Xu wrote:
> In kernel/sys.c, arg2 is an unsigned long value and it will never
> less than 0. Also, since kernel commit id da8b44d5a9f8, timer_slack_ns 
> and default timer_slack_ns have been converted into u64, the return 
> value of PR_GET_TIMERSLACK has been limited under ULONG_MAX.
> 
> The timer slack value also can be inherited by a child created via
> fork(2).
> 
> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Reviewed-by: Cyrill Gorcunov <gorcunov@gmail.com>
