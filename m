Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 94B3E368842
	for <lists+linux-man@lfdr.de>; Thu, 22 Apr 2021 22:53:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236877AbhDVUy1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 22 Apr 2021 16:54:27 -0400
Received: from wout4-smtp.messagingengine.com ([64.147.123.20]:42497 "EHLO
        wout4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236851AbhDVUy1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 22 Apr 2021 16:54:27 -0400
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
        by mailout.west.internal (Postfix) with ESMTP id 661EB20EE;
        Thu, 22 Apr 2021 16:53:51 -0400 (EDT)
Received: from imap36 ([10.202.2.86])
  by compute7.internal (MEProxy); Thu, 22 Apr 2021 16:53:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dimebar.com; h=
        mime-version:message-id:date:from:to:subject:content-type; s=
        fm2; bh=X+IXlJzRtsZ499lxOjCLCrYwkMMyMFzEaHpPV4AZJM0=; b=q06BvkfZ
        6VjL0Kws0a2K5YnnL7FPggUNyMRrUjGpc+MvP2sY02myYg0Bw2vlBoD1dLp1j4BD
        K5Q7KrrsqW0T/zgwxfRhQeq9AqG+zOSdaq3Ieu880E7WujQtOPuZTfUMGbnAluzS
        JOurHKtOElO+ERSRyjTCc25rT/qcKQrzc/DcTi4hNuVrJSl+OPcEsJryzRE1hAYu
        hT1dChnkx2gBt97BqERRXVnYOJRX/ZadjOuY31EQyzDSrEhOje4pyiUjGOy0kcqe
        /WLQ5SzYhOr+pXdQjGT+AIIBqzdn4jM/Ad2eQXnF99QXtm7n6epI20FN6J6CHdhv
        XW+JiMWK+8dOGA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=content-type:date:from:message-id
        :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
        :x-me-sender:x-sasl-enc; s=fm2; bh=X+IXlJzRtsZ499lxOjCLCrYwkMMyM
        FzEaHpPV4AZJM0=; b=n8CTTXUTLdrR8bXK6q0Mk8iP5N/3ywvV2Q96ZnlqsWHK/
        RMVeCuBlyVLzm2sz8sk1aQU26gb/+p8P5ETjOnFfAkv46dh8K/fQB6t4sWrGcNW3
        dC4ELLgmZt622xTqPAgbCCz42dOD+IdAW/vOvBxnu58lFUtc8faLEJESHjhib5Ow
        z+it5gf4lnIl5hoT1WDVFCa1RNnWNt43hSVW3AaDg8a3sMxScpQSfbFuM0cFvEe2
        oojanUksophGVqaRpiZ8Ky8MDeZbUENtDgddtQBs69JSvp2kEPhOcyCpXIr5yCap
        7vV2QjGq2CzUeGDmPfCsDyoFHhmlaLitr43kKVoXA==
X-ME-Sender: <xms:XuKBYNye0wbUgHAAW6f-muil0pS9xK34-KrbV_ZamkVDfuJE353pQg>
    <xme:XuKBYNRnmovWxVAmJ8XsJDImgiDdgnkhRBW9LTg3jmhrSvH7zCVNb8WTPYvltFpQM
    4jnNrnprOaOQWl9>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvddutddgudehgecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepofgfggfkfffhvffutgesthdtre
    dtreertdenucfhrhhomhepfdfrhhhilhhiphcutfhofihlrghnughsfdcuoehlihhnuhig
    qdhkvghrnhgvlhesughimhgvsggrrhdrtghomheqnecuggftrfgrthhtvghrnhepheeuvd
    ejfeetleekffdvudetkedtveelvdekgfelleevudekhfevuedtiefhtddunecuffhomhgr
    ihhnpehsohhurhgtvgifrghrvgdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehlihhnuhigqdhkvghrnhgvlhesughimhgvsggrrhdr
    tghomh
X-ME-Proxy: <xmx:XuKBYHUF17CRyOOOPbtjf82YTklRby2taj6MB38Amu9dyK529iRU8g>
    <xmx:XuKBYPjcMz2f5mNduaOE5acmGso4iMOr1eK8FXusEKpFPXetadpgIg>
    <xmx:XuKBYPCpf6jEDBER_fiAVEJ-C65uKOiLMhl8_-x72eiZu8s3K06Kaw>
    <xmx:X-KBYC9BzAIMfN7XeR6fVlIznsQUe4tpj5haP6CPoyxr7hZNt_Qvag>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id 7124010E0089; Thu, 22 Apr 2021 16:53:50 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-403-gbc3c488b23-fm-20210419.005-gbc3c488b
Mime-Version: 1.0
Message-Id: <470867e7-94d6-49a1-95d4-16cee0264b4e@www.fastmail.com>
Date:   Thu, 22 Apr 2021 21:53:24 +0100
From:   "Philip Rowlands" <linux-kernel@dimebar.com>
To:     "Michael Kerrisk" <mtk.manpages@gmail.com>,
        "Alejandro Colomar" <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: getent hosts address family
Content-Type: text/plain
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

man1/getent.1 currently includes:

"""
When one or more key arguments are provided, pass each key to gethostbyaddr(3) or gethostbyname2(3), depending on whether a call to inet_pton(3) indicates that the key is an IPv6 or IPv4 address or not, and display the result.
"""

Please append the following clarification:

"""
For symbolic hostnames, getent hosts always tries an AF_INET6 lookup first, even when the system is not otherwise configured to use IPv6.
"""

The reason is to explain to the user why AAAA DNS queries appear as a result of running "getent hosts example.com" on an IPv4-only system. The code is here if you'd like to confirm:
https://sourceware.org/git/?p=glibc.git;a=blob;f=nss/getent.c#l294


Thanks,
Phil
