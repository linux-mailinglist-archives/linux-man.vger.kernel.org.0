Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 01BE72D4890
	for <lists+linux-man@lfdr.de>; Wed,  9 Dec 2020 19:06:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732438AbgLISFk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Dec 2020 13:05:40 -0500
Received: from mout.gmx.net ([212.227.17.21]:33119 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728358AbgLISFk (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 9 Dec 2020 13:05:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1607537048;
        bh=gAB//P7l3FadR5mtl3tX4JI0oVYTxGxOuEd2DECdEgs=;
        h=X-UI-Sender-Class:To:From:Subject:Date;
        b=LoThn2GO7h6fKeeXPAB6g0IEk1TUbNX8PbxXOUVjnCUlEKIF6W1UHOVf2F3Kg/spT
         2eniP/Y8lSvX9tBVdHJRh388UYXjweKoUncVym8nOj++TafQ9p6y5v07IFoxDv/wyG
         TVqp6A9VlB3zXrqgiL+PQGtv7Y74fusnZ145M2m4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.123.83] ([62.143.246.89]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MXXuB-1kdXK4402Z-00YzqC; Wed, 09
 Dec 2020 19:04:08 +0100
To:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
From:   Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: cacheflush.2
Message-ID: <794cf0d1-d528-4b5a-3ce0-b1b5f588dc6d@gmx.de>
Date:   Wed, 9 Dec 2020 19:04:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:IHsq2VUe4GZ6evNuDZHkfpwFHZY1HNUY/AFcH5VD0ofj0UDQ3Im
 HQ+fc0UCtuPtx4MVtARde+dBms97VkCzWR7mGPmQ6sIK3SkAVovNHWYK4RK8jpeV+5O6FVJ
 f7hNcs9w9ClpxEwLo2k1NepBxr6RUc4cOxRz/9x+ZcWOyvw/xG4MKo6PDxhQS23pBllOX+9
 sNID/nePTZTe77BRHW4Ow==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Yt0PPHD6YXE=:sDFSvYfy+uZYhpAMwwFtQa
 L/FgRCgoSVO9iHpUp2rdzUlY6TKqiuX6e/WSa8FaP15+JoIumpzAGJegomjQGUVkV8geOSw1N
 c5skgCqrPbC6m699DS41zxmwPWuEJynbj2juDnLynBf4olR9g86whDprDWp2lQZOw6MyTPlvA
 Sg1hMr9dLLKWBcxceyLaYgX9+TIssHAeE1TwRSI8LYhySOOuc8GO40i4flpgSsM/X+BGSJ4Yz
 cD5HzPQaj7HVFkje7QHsGJsjrv28QmaX/hDflGq1b/QV762G1c5Memq9gk3qrVbHXJzz3oAI7
 lzkIucXalPwG6XEuaiN32A0jHVKX1r5r3w06yB7SncZ4TzPy/roZrCIcLuNK69YWinagg3Mov
 SJw8twk8w/sT08rPrvZfbiGut7Zd3Nt1WonHi22qFb4f9E0wSpaEOWipoHz+2Df8RJeyByM2W
 ok0DV+usCxjb2QW5Gs1auZdVJxvXe+2noW1Kv2xkk0WUEXePS5cJGCVS2Vey5Z59dR6A2cjs8
 x1w4A8oW7RQETgWWhgizRTR+exsZgsH4hLtxGqminjqs9BjG+QjWPFGctnPeEfiGhkRlraP5v
 8bAkcb8sVjHl74F7Ta6ENzukzw8AJwelQgxpNb3uKQ/79fVH3QWJdV2LF5zBoCJpLerDyN+uH
 4tZ9K6B0FAZzwtcpfgfJKN9xHy8Xdz1JtUZyS2UnNhJ9G2bEDAVN6FVhi2Kp+YT/6H7EG37q+
 OS96y3u682ja7WoscMs/c32OijenOt2SxvbLNHAjNe9czsZXyiklMNWTxVMbk19a8N87UC+sj
 LeFNVvA7956hLawyoiIwDdMLE1zqiPZWebtY1DCPhMcFqN6p2coJc1eLS3sDixWwvX6LvoRmx
 8xlEkk/iTMSjl7hIn7lw==
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,

function cacheflush() does not exist on many architectures.

It would have saved me a lot of time if the man-page had referenced GCC's

void __builtin___clear_cache(void *begin, void *end)

Maybe you can add it to NOTES.

Best regards

heirnich
