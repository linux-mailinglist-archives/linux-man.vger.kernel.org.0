Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF6AB53F170
	for <lists+linux-man@lfdr.de>; Mon,  6 Jun 2022 23:10:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229725AbiFFVK4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jun 2022 17:10:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229559AbiFFVK4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jun 2022 17:10:56 -0400
Received: from gofer.mess.org (gofer.mess.org [IPv6:2a02:8011:d000:212::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39E4F22B3C
        for <linux-man@vger.kernel.org>; Mon,  6 Jun 2022 14:10:55 -0700 (PDT)
Received: by gofer.mess.org (Postfix, from userid 1000)
        id 71170101D08; Mon,  6 Jun 2022 22:10:53 +0100 (BST)
Date:   Mon, 6 Jun 2022 22:10:53 +0100
From:   Sean Young <sean@mess.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] lirc.4: document lirc changes in the kernel
Message-ID: <Yp5tXfE/rn2C7uC+@gofer.mess.org>
References: <Yos/9usw6be5l4jh@gofer.mess.org>
 <ab4bc63e-f497-d5e3-1a9a-f58e12f52b0c@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ab4bc63e-f497-d5e3-1a9a-f58e12f52b0c@gmail.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Mon, Jun 06, 2022 at 09:14:22PM +0200, Alejandro Colomar wrote:
> On 5/23/22 10:04, Sean Young wrote:
> > Linux 5.17 makes LIRC_SET_REC_TIMEOUT_REPORTS an no-op and 5.18
> > introduces LIRC_OVERFLOW. Also some rewording to clarify.
> > 
> > Signed-off-by: Sean Young <sean@mess.org>
> 
> Could you please provide some kernel commits that show these changes?
> It would be nice to be able to easily check.

Of course, I should have included that in the first place

68a99f6a0ebfe media: lirc: report ir receiver overflow
74747dda582dc media: lirc: always send timeout reports

Thanks,
Sean
