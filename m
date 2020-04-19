Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ACD8F1AFEB9
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 00:47:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725949AbgDSWr4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 18:47:56 -0400
Received: from hypra.fr ([62.210.38.35]:49972 "EHLO hypra.fr"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725834AbgDSWrz (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 19 Apr 2020 18:47:55 -0400
Received: from [192.168.0.21] (unknown [82.66.86.116])
        by hypra.fr (Postfix) with ESMTPSA id EBFE058379F;
        Mon, 20 Apr 2020 00:47:53 +0200 (CEST)
From:   Jean-Philippe MENGUAL <jpmengual@debian.org>
Subject: Error in the nsenter.1 page
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Message-ID: <d14c92ee-ba52-5821-5cb5-c3b476055770@debian.org>
Date:   Mon, 20 Apr 2020 00:47:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:77.0) Gecko/20100101
 Thunderbird/77.0a1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: fr
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

Sorry for not producing a patch but I dont understand the syntax in the 
file. Here is the problematic string:
Children will have a set of PID to process mappings separate from the
.B nsenter
process
For further details, see
.BR pid_namespaces (7)
and
the discussion of the
.B CLONE_NEWPID
flag in
.B nsenter
will fork by default if changing the PID namespace, so that the new program
and its children share the same PID namespace and are visible to each other.
If \fB\-\-no\-fork\fP is used, the new program will be exec'ed without 
forking.

I think it is buggy. The "For further details, see..." seems at the 
middle of two sentences explaining the same thing, should be moved at 
the end of the paragraph I guess. I think I will try reordering the 
sentences in the translation to avoid keeping a fuzzy until the next 
release, but the translation will then be different from the English string.

Thanks for your feedback


Regards

-- 
Jean-Philippe MENGUAL
Debian Developer non uploading
Community team member
Accessibility team member
debian-l10n-french team member
President of Debian France non-profit organization

