Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F192E6AB1A6
	for <lists+linux-man@lfdr.de>; Sun,  5 Mar 2023 19:06:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229555AbjCESGQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Mar 2023 13:06:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229485AbjCESGP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Mar 2023 13:06:15 -0500
Received: from mail.ispras.ru (mail.ispras.ru [83.149.199.84])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31A86DBFE
        for <linux-man@vger.kernel.org>; Sun,  5 Mar 2023 10:06:13 -0800 (PST)
Received: from mikes (unknown [109.252.44.27])
        by mail.ispras.ru (Postfix) with ESMTPSA id E7EA440D403D;
        Sun,  5 Mar 2023 18:06:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.ispras.ru E7EA440D403D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ispras.ru;
        s=default; t=1678039570;
        bh=Za/+yl35zJISSq8JwOmzE9Elpbt7tW9wGt7cyn2ByXM=;
        h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
        b=j25Epiar0g6xXEOaXvI8SLiN9y2dVwtC/soXDEMat4rApipH/B6H/LygqLVR+G/JW
         ADw5zPWHcu9XHLlB48X2kVbfgnUPrVVw000Bmpmy6WMzBWocjeKR5CQVXzT4t6hgyf
         jJ0wJKHeJMzKn3u+PbsSXzEmv6M8MZpxpV8cZ7b4=
From:   Vladislav Ivanishin <vlad@ispras.ru>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Eric Dumazet <eric.dumazet@gmail.com>,
        Piergiorgio Beruto <piergiorgio.beruto@gmail.com>,
        "David S. Miller" <davem@davemloft.net>
Subject: Re: [patch] recv.2: Mention SOCK_SEQPACKET in MSG_TRUNC flag
 description
References: <87v8n03coa.fsf@ispras.ru>
        <00e2987e-0f37-b572-256c-163ded066fa0@gmail.com>
        <87cz6fqa0z.fsf@ispras.ru>
        <e4231c01-73f0-7846-f462-f3921a811ec1@gmail.com>
        <877cwmuntk.fsf@ispras.ru> <87ilfwgamh.fsf@ispras.ru>
Date:   Sun, 05 Mar 2023 21:06:05 +0300
In-Reply-To: <87ilfwgamh.fsf@ispras.ru> (Vladislav Ivanishin's message of
        "Mon, 20 Feb 2023 08:37:58 +0300")
Message-ID: <87v8jfcbua.fsf@ispras.ru>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Ping (there haven't been any objections to the current version of the
patch at https://lore.kernel.org/linux-man/87cz6fqa0z.fsf@ispras.ru/).

On Mon, Feb 20 2023, Vladislav Ivanishin <vlad@ispras.ru> wrote:
> Hi Alex; ping!
>
> On Mon, Feb 13 2023, Vladislav Ivanishin <vlad@ispras.ru> wrote:
>> On Sun, Feb 12 2023, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>>> Thanks!  I CCd those involved in the referred commit.  I'll give them
>>> a week or so to have a look.
>>
>> Great, thank you!
>>
>>> Could you please ping me again in a week or so?
>>
>> No problem, will do.
