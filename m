Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2446A69C4FD
	for <lists+linux-man@lfdr.de>; Mon, 20 Feb 2023 06:37:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229567AbjBTFh5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Feb 2023 00:37:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbjBTFh4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Feb 2023 00:37:56 -0500
Received: from mail.ispras.ru (mail.ispras.ru [83.149.199.84])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B26967AA2
        for <linux-man@vger.kernel.org>; Sun, 19 Feb 2023 21:37:54 -0800 (PST)
Received: from archbook (unknown [45.130.87.6])
        by mail.ispras.ru (Postfix) with ESMTPSA id C436840737C7;
        Mon, 20 Feb 2023 05:37:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.ispras.ru C436840737C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ispras.ru;
        s=default; t=1676871471;
        bh=cr15oLwZwDNn03JvNg57y24fjlCIrWitFYQ0Lp41jtg=;
        h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
        b=BA3JqGhZB0XoDJH7NuE0Q5uuxblkLLD4cjgmcyLUvHdHdZUunSBN9L98d6LhkRs0r
         mL65trS21uegtEjezZ1/sPAu/4F/kv3jMjZPq8CpqZIa5oikwVNtaiEjoMWY/S98hu
         phSA7/jpSsdaTgqR5+4c679lypiDcmzG7RVZcQLE=
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
        <877cwmuntk.fsf@ispras.ru>
Date:   Mon, 20 Feb 2023 08:37:58 +0300
In-Reply-To: <877cwmuntk.fsf@ispras.ru> (Vladislav Ivanishin's message of
        "Mon, 13 Feb 2023 08:38:47 +0300")
Message-ID: <87ilfwgamh.fsf@ispras.ru>
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

Hi Alex; ping!

On Mon, Feb 13 2023, Vladislav Ivanishin <vlad@ispras.ru> wrote:
> On Sun, Feb 12 2023, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>> Thanks!  I CCd those involved in the referred commit.  I'll give them
>> a week or so to have a look.
>
> Great, thank you!
>
>> Could you please ping me again in a week or so?
>
> No problem, will do.
