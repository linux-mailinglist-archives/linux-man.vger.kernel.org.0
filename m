Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 91F8C2DFE1E
	for <lists+linux-man@lfdr.de>; Mon, 21 Dec 2020 17:39:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725782AbgLUQjL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Dec 2020 11:39:11 -0500
Received: from bhuna.collabora.co.uk ([46.235.227.227]:42004 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725780AbgLUQjL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Dec 2020 11:39:11 -0500
Received: from localhost (unknown [IPv6:2804:431:c7f4:32cf:1de2:6c49:9684:18e0])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: krisman)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id BFB701F44FAD;
        Mon, 21 Dec 2020 16:38:25 +0000 (GMT)
From:   Gabriel Krisman Bertazi <krisman@collabora.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] prctl.2: Document Syscall User Dispatch
Organization: Collabora
References: <20201219041009.3143592-1-krisman@collabora.com>
        <30db3ba3-34de-369d-4310-2818a5499a6d@gmail.com>
Date:   Mon, 21 Dec 2020 13:38:21 -0300
In-Reply-To: <30db3ba3-34de-369d-4310-2818a5499a6d@gmail.com> (Alejandro
        Colomar's message of "Sat, 19 Dec 2020 16:01:58 +0100")
Message-ID: <87r1nj15du.fsf@collabora.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com> writes:

> Hi Gabriel,
>
> Thanks for the page!
> Please see some comments below.

Thanks for the very detailed review.  In particular, I wasn't familiar
with semantic lines, which seems like a very interesting concept.

Will follow up with v2 shortly.

-- 
Gabriel Krisman Bertazi
