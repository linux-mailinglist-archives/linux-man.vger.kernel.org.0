Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A65E33E0C39
	for <lists+linux-man@lfdr.de>; Thu,  5 Aug 2021 04:04:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237996AbhHECES (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Aug 2021 22:04:18 -0400
Received: from mail.kernel.org ([198.145.29.99]:52674 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231173AbhHECES (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 4 Aug 2021 22:04:18 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8A41C60F43;
        Thu,  5 Aug 2021 02:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux-foundation.org;
        s=korg; t=1628129043;
        bh=Jg/kMvGL/SQF9WUw42I1K/ZAjAPxlF9udF1stSAMnCY=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=QgoLYjhD8+ZU4OWWc3KoQGI8fuMPJxuSv3j1gUS76oyfV3aeF6YPnlVTymEl4xMky
         vI/VZ2FOdwl5veFgOoJVRWN6QQy6jityLJMbmw55wyN7XrZtL7k1X/Roe5vVplPPU3
         SHSc3fTslltAT3I2fTioe89XkD0e+/Wt+hVkODPc=
Date:   Wed, 4 Aug 2021 19:04:02 -0700
From:   Andrew Morton <akpm@linux-foundation.org>
To:     zhangkui <zhangkui@oppo.com>
Cc:     linux-mm@kvack.org, linux-kernel@vger.kernel.org,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] mm/madvise: add MADV_WILLNEED to process_madvise()
Message-Id: <20210804190402.8b9dbac3c4f417945c6d1de2@linux-foundation.org>
In-Reply-To: <20210804082010.12482-1-zhangkui@oppo.com>
References: <20210804082010.12482-1-zhangkui@oppo.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed,  4 Aug 2021 16:20:10 +0800 zhangkui <zhangkui@oppo.com> wrote:

> There is a usecase in Android that an app process's memory is swapped out
> by process_madvise() with MADV_PAGEOUT, such as the memory is swapped to
> zram or a backing device. When the process is scheduled to running, like
> switch to foreground, multiple page faults may cause the app dropped
> frames.
> To reduce the problem, SMS can read-ahead memory of the process immediately
> when the app switches to forground.
> Calling process_madvise() with MADV_WILLNEED can meet this need.

This will require a small update to the process_madvise(2) manpage. 
Can you please send a patch?
