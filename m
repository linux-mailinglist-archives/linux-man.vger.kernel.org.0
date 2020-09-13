Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9A65626809A
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 19:38:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725936AbgIMRiD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 13:38:03 -0400
Received: from vmicros1.altlinux.org ([194.107.17.57]:44764 "EHLO
        vmicros1.altlinux.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725928AbgIMRiD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 13:38:03 -0400
Received: from mua.local.altlinux.org (mua.local.altlinux.org [192.168.1.14])
        by vmicros1.altlinux.org (Postfix) with ESMTP id 875A672CA54;
        Sun, 13 Sep 2020 20:38:01 +0300 (MSK)
Received: by mua.local.altlinux.org (Postfix, from userid 508)
        id 71D9C7CFA2F; Sun, 13 Sep 2020 20:38:01 +0300 (MSK)
Date:   Sun, 13 Sep 2020 20:38:01 +0300
From:   "Dmitry V. Levin" <ldv@altlinux.org>
To:     Konstantin Bukin <kbukin@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] stat.2: fixed inode printing in example program
Message-ID: <20200913173801.GA15488@altlinux.org>
References: <20200913150449.11188-1-kbukin@gmail.com>
 <20200913151642.GA14054@altlinux.org>
 <CAF98MAKpdwqowXT9VnO=bZ5CNYPp1Z1OWHg5qVrH7d-0yyui0w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAF98MAKpdwqowXT9VnO=bZ5CNYPp1Z1OWHg5qVrH7d-0yyui0w@mail.gmail.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, Sep 13, 2020 at 10:24:23AM -0700, Konstantin Bukin wrote:
> On x86 the size of ino_t does not appear to be larger than long.

It depends.  For example, with glibc on all architectures ino_t is 64-bit
when the code is compiled using -D_FILE_OFFSET_BITS=64.


-- 
ldv
