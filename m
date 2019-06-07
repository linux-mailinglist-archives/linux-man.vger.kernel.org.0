Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9263A38ABA
	for <lists+linux-man@lfdr.de>; Fri,  7 Jun 2019 14:56:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728147AbfFGM4m (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Jun 2019 08:56:42 -0400
Received: from mail-lj1-f177.google.com ([209.85.208.177]:45165 "EHLO
        mail-lj1-f177.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727102AbfFGM4m (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Jun 2019 08:56:42 -0400
Received: by mail-lj1-f177.google.com with SMTP id m23so1628499lje.12
        for <linux-man@vger.kernel.org>; Fri, 07 Jun 2019 05:56:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iut-rodez-fr.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=Mrkexu/p/DslThoseCN1hOW2eImF4odHVpZ749Ay16I=;
        b=bqmnxnPqhBF/3daKaRBudLE7c28FcrVNFtiIokHiyDRM2bbgE8RGa2mrlCtW/gfGO6
         0XGIh4DmU2tk2tqGMUlVwsHj8mPj6ku010Bn2PkN7wtvRx/61chjXDmFYW7MxFCRkWKl
         dBX/FAiIdEpI/Tdf3Hvsn6a6gVTQxYBq9/QDCpcnq4F1AZxBTqhsEYKMtkUnUWiRY8OJ
         3OK2pioGmchf9u8j+7KQyP5bUeijXFGugtwU1Ygj/0tIj1VByhWkc1imkTn7eESIkU/J
         XqsV9i//ou+taDPBBJn0OyJM52gt6wm03qEtfemL8VlkgUfVBx0uK8kbQBOikMaFRcrr
         OIRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Mrkexu/p/DslThoseCN1hOW2eImF4odHVpZ749Ay16I=;
        b=ntuPAdxVihzL+hS6R/GceX7xrzPWNd7rAJq5fDAHmSPDfqwGsrHR3K1/SJ0kuSyOWa
         tNDquftAYpQm2YYRntyHX8pvl6uf7Uk7RioZpjWTBSzqSimuiJmAtTJ2GO3si58XI5iZ
         hlEVf47FORgEBL11wUtavW9UHFwOjGY6c89V+/V10l9xMAf2kj0QKb802+7qHtSr+j43
         0+l6e1XiTNFmKJwK9SWueG4roxw6Fu9ChB7w6I5vQYJzocu91jdpVAVEpZjLIYWzzght
         9OusAZA4RBg8CWRh4GsrpSEGXJj0SBAJHXwdkcnoZuf3CIpFtVsvcohHba5ZBDQqSj7q
         sX3Q==
X-Gm-Message-State: APjAAAVpbPTlgmEMQq4ab6FLEprGJCbGaK1bhO3hNmUuPYIdzVazdg+9
        IU80zybifIOlrzIxfv9Q7uw4pxCOFOlWEYR9MH6S8RSR76g=
X-Google-Smtp-Source: APXvYqzK4Iw2bpkj0l4kbeNPXtHXmmoLAhH52igIMJVgryMwgm5d/dk2UOhnRJcjSeDT2jmWX+ppzzGZF+vgiIvet/s=
X-Received: by 2002:a2e:85c4:: with SMTP id h4mr25600683ljj.217.1559912199800;
 Fri, 07 Jun 2019 05:56:39 -0700 (PDT)
MIME-Version: 1.0
From:   Eric Sanchis <eric.sanchis@iut-rodez.fr>
Date:   Fri, 7 Jun 2019 14:56:49 +0200
Message-ID: <CAA=uBcFg6X5BqhfjjHTNHhsuazredHctkvsKrq7fWZHhDq82Bg@mail.gmail.com>
Subject: An issue in strcat manpage
To:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Dear Maintener,

The example illustrating the strcat function man page produces a
buffer owerflow (off-by-one
error). A typical trap of strcat.

The program below shows the problem:

#include <string.h>
#include <stdio.h>

       int
       main(int argc, char *argv[])
       {
       #define LIM 4
           char p[LIM];
       int j ;

           p[0] = '\0';

           for (j = 0; j < LIM; j++)
               strcat(p, "a");
       printf("(j=%d)  p='%s' -- psize : %d  -- plen=%u\n", j,p,LIM,
(unsigned int) strlen(p)) ;

           return 0 ;
       }

Execution:

$ prog
(j=4)  p='aaaa' -- psize : 4 -- plen=4
$

p should be 'aaa'.

Do you intend to fix this issue ?

Yours truly,

Eric Sanchis
Associate Professor in Computer Science
University of Toulouse Capitole (IUT Rodez)
France
