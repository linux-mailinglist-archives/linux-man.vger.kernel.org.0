Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A508310F2B7
	for <lists+linux-man@lfdr.de>; Mon,  2 Dec 2019 23:14:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725834AbfLBWO7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Dec 2019 17:14:59 -0500
Received: from youngberry.canonical.com ([91.189.89.112]:52514 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725825AbfLBWO7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Dec 2019 17:14:59 -0500
Received: from [213.220.153.21] (helo=wittgenstein)
        by youngberry.canonical.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <christian.brauner@ubuntu.com>)
        id 1ibty4-0004UI-0Y; Mon, 02 Dec 2019 22:14:56 +0000
Date:   Mon, 2 Dec 2019 23:14:55 +0100
From:   Christian Brauner <christian.brauner@ubuntu.com>
To:     Adrian Reber <areber@redhat.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] clone.2: added clone3() set_tid information
Message-ID: <20191202221452.4obywepdevq5dq2w@wittgenstein>
References: <20191202142740.59402-1-areber@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20191202142740.59402-1-areber@redhat.com>
User-Agent: NeoMutt/20180716
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Dec 02, 2019 at 03:27:40PM +0100, Adrian Reber wrote:
> Signed-off-by: Adrian Reber <areber@redhat.com>

I'm generally fine with all of this, so:

Acked-by: Christian Brauner <christian.brauner@ubuntu.com>

but should this maybe also mention that a pid namespace either already
needs to have a pid 1 or if it does not the chosen pid has to be set to
1. In short:
"Callers may only choose a pid > 1 in a given pid namespace if an init
process (i.e. a process with pid 1) already exists. Otherwise the pid
entry for this pid namespace must be 1."
or something like this. 

	Christian
