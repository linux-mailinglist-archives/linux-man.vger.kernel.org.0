Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6E8CA364CF
	for <lists+linux-man@lfdr.de>; Wed,  5 Jun 2019 21:36:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726693AbfFETgg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 5 Jun 2019 15:36:36 -0400
Received: from bombadil.infradead.org ([198.137.202.133]:43244 "EHLO
        bombadil.infradead.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726528AbfFETgf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 5 Jun 2019 15:36:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
        :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=SC3fvAovUc9BGwdTxWQpMcaF4o2YNYVeew3/AESkDls=; b=W26fEngRkEYC8SJmlacLN7vZW
        QexU57TTBK2Dpg3oqTPHlr/i7lWnEb1HCBgOOB7uMMT4mr9dWYDJ8JH7gNTYPR1q97RJFTsHheEoU
        g015+3ICz90HWiT0DYIv6HZbOVuxG/fF481PSVpUJGIBHRTpun7t2r3KKKIY6fNM+1vzTU9nsbWfa
        e60DXJUC24fWUaDf1f50X5XGRd8crr/kl3t6YK9VtHpgocXvxv2XT2bFHNKitxc+RGhotNzgjvH4Q
        jJipdTf8FUNVJVP+1z4fS/aawjGSZQfhCMB2redOYwk+FpJZzNeqfloqEJp1xOs3qI0jAW7ajS90p
        XY9tnDhTg==;
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red Hat Linux))
        id 1hYbi5-0001Uh-NE; Wed, 05 Jun 2019 19:36:33 +0000
Date:   Wed, 5 Jun 2019 12:36:33 -0700
From:   Christoph Hellwig <hch@infradead.org>
To:     Julia Suvorova <jusual@mail.ru>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] io_submit.2: Add IOCB_CMD_POLL opcode
Message-ID: <20190605193633.GA5652@infradead.org>
References: <20190604150553.2168-1-jusual@mail.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190604150553.2168-1-jusual@mail.ru>
User-Agent: Mutt/1.9.2 (2017-12-15)
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Looks good,

thanks!
