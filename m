Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 522C549162
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2019 22:32:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726023AbfFQUcU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Jun 2019 16:32:20 -0400
Received: from mail.ispras.ru ([83.149.199.45]:53460 "EHLO mail.ispras.ru"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725844AbfFQUcU (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 17 Jun 2019 16:32:20 -0400
X-Greylist: delayed 540 seconds by postgrey-1.27 at vger.kernel.org; Mon, 17 Jun 2019 16:32:19 EDT
Received: from mail.ispras.ru (localhost [127.0.0.1])
        by mail.ispras.ru (Postfix) with ESMTPSA id 98E79540081;
        Mon, 17 Jun 2019 23:23:18 +0300 (MSK)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Date:   Mon, 17 Jun 2019 23:23:18 +0300
From:   Alexey Izbyshev <izbyshev@ispras.ru>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: A small bug in ptrace(2) "Ptrace access mode checking"
Message-ID: <edd3812727362d9acb4fa0e9ef1a2840@ispras.ru>
X-Sender: izbyshev@ispras.ru
User-Agent: Roundcube Webmail/1.1.2
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello, Michael!

I've noticed a small bug in ptrace(2) man page at NOTES -> Ptrace access 
mode checking -> 5(b):

b) Deny access if neither of the following is true:

              · The caller and the target process are in the same user
                namespace, and the caller's capabilities are a proper
                superset of the target process's permitted capabilities.

              · The caller has the CAP_SYS_PTRACE capability in the 
target
                process's user namespace.

The usage of "*proper* superset" seems wrong because (a) it'd deny 
access in a common case when both the caller and the target have the 
same capabilities and (b) it doesn't correspond to the kernel code, 
which checks for a non-strict superset[1].

I believe that "proper superset" should be replaced with just 
"superset".

[1] 
https://elixir.bootlin.com/linux/v5.1.11/source/security/commoncap.c#L152

Thanks for your great work on the man pages!

--Alexey


