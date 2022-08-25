Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29DE05A1E08
	for <lists+linux-man@lfdr.de>; Fri, 26 Aug 2022 03:18:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231422AbiHZBSQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 25 Aug 2022 21:18:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229536AbiHZBSP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 25 Aug 2022 21:18:15 -0400
X-Greylist: delayed 22654 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 25 Aug 2022 18:18:13 PDT
Received: from mx0b-00169c01.pphosted.com (mx0a-00169c01.pphosted.com [67.231.148.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A61DEC993B
        for <linux-man@vger.kernel.org>; Thu, 25 Aug 2022 18:18:13 -0700 (PDT)
Received: from pps.filterd (m0048493.ppops.net [127.0.0.1])
        by mx0a-00169c01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 27PGi1DB031776
        for <linux-man@vger.kernel.org>; Thu, 25 Aug 2022 12:00:39 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=paloaltonetworks.com;
 h=mime-version : from : date : message-id : subject : to : cc :
 content-type; s=PPS12012017;
 bh=Nt3h98hb8LhhBVas8MAcKbQF1pUbJ06blXzYcqdCyGE=;
 b=BfNDdHAjqHDYoycx4Ypey5vloHXtaUzHrvDY0Bvg95Dj/aCu1PdHlwQvvcVQPPmsWaz6
 vJTzGsfM2RPwzeSxMMSmrP2zxBVGhszzPOIcv+fUaqeku9RtO2WuY/UayT0KrG2f2jlt
 ehzV5d9B9mUDTRUAIi5SteNsrwUgMPn6KP/4On7qQfwSWdQuGuw60O3goPKk4ZKog3ah
 DgCwcUntv6uF1x1UMOVe8fhAeRFFbKTIqbUyhRPOgE7QnHPYmZfyr7w9J40/K82fyXFN
 PKl+8v8jBoI3nLc9IkY5BROmGE/Rau/+wsjltnirFsbtoEnvEx7scy1Bj0XcN4KcRT3k jQ== 
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
        by mx0a-00169c01.pphosted.com (PPS) with ESMTPS id 3j6crjgjrg-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
        for <linux-man@vger.kernel.org>; Thu, 25 Aug 2022 12:00:39 -0700
Received: by mail-pj1-f71.google.com with SMTP id d16-20020a17090ad3d000b001fb42eb7467so5272068pjw.9
        for <linux-man@vger.kernel.org>; Thu, 25 Aug 2022 12:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paloaltonetworks.com; s=google.paloaltonetworks.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc;
        bh=Nt3h98hb8LhhBVas8MAcKbQF1pUbJ06blXzYcqdCyGE=;
        b=USIuRVOawvbul7LUXH95sVZ6GGQeHdKWRMmwFEi7HHSp1b0GQRudgkJ3ub3n+31hEc
         jwi8BSCL9N3YHD6UZi7YVR6XQDt63xpZ0C66W3As3IplFT8BybhSeR2LTHFlkIohNJjr
         sU2ZG52maFQzZ22uWKIHUrMhImLFgNp44HR94clgwL7gJ7yo7LP5S4g8tIBJuaAm65Xd
         WU1LO3Az923hdKgT0kHSMekC+lYUmOYtdYAQSVChdQvMtL6b3K+ViRL1yV83myNqSLBB
         DZpjaK/mrOTUqecPickvf38ldYQiU8yYMjm+sMCtEuozxO4ZmGRrG7wKR16UU5cPJeT4
         BCyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc;
        bh=Nt3h98hb8LhhBVas8MAcKbQF1pUbJ06blXzYcqdCyGE=;
        b=z05GSSc4uwRI6vaLh7NmhsrtPrx9UsHTHqXMlIMtIkOtW2O4HsTBBL/mipfHV9QSqm
         hFizoKh/HtE3PPw31I25w+Jp5OHRFEWiP0ol1JsU5YtAuPVqhSgPK/jo/d7SIM+WzPfQ
         DcwUHVVvBzKvWhvoTKjZB40ZDk0JmZ5BealyB9G5U+89EjGC/uUMPjBNLuT1/G9SpBQj
         TxlCJPUM+fh8pg7dS58KSA4FTRR6tvykWNWtiVcqYPgPspFKiNIvqXOGlTt3YuI/OOGd
         K4E7PSDTQKdLs9L2863wWvfUgcEE18DY0EO5RHk4zaxSFjdUnih+aDbQwmn5693QRe9G
         IoLA==
X-Gm-Message-State: ACgBeo0Hh3lsUJEq9qJ3ZglxudKd1s5o52IvyqIjPw0q5lpvyU1VFN0A
        smmbWWP+uk5zL27hFRTxgCVMhtWd+m/p5CoW0f0raIpOXc/+P/sOwqKDFHbS1VrxEupXySm+PQi
        ZQwILIbnvkbfeZ9nb+BsoqPa7jiIoCr8D89HB
X-Received: by 2002:a17:902:ccc5:b0:172:a995:9b37 with SMTP id z5-20020a170902ccc500b00172a9959b37mr446105ple.105.1661454038106;
        Thu, 25 Aug 2022 12:00:38 -0700 (PDT)
X-Google-Smtp-Source: AA6agR5v9HHFgRvgIkc7aZsuPYGnixqEUQDnQ6q2MDajCtgukAH/l2cRRLR6c0mvqHGkE14w2BgGwJtmP2rVfK93rKQ=
X-Received: by 2002:a17:902:ccc5:b0:172:a995:9b37 with SMTP id
 z5-20020a170902ccc500b00172a9959b37mr446084ple.105.1661454037872; Thu, 25 Aug
 2022 12:00:37 -0700 (PDT)
MIME-Version: 1.0
From:   Enke Chen <enchen@paloaltonetworks.com>
Date:   Thu, 25 Aug 2022 12:00:27 -0700
Message-ID: <CANJ8pZ8y=DMRVDLW+Suy00aeShuoWLwYGRr6z98qODLJzbdcxw@mail.gmail.com>
Subject: Patch for TCP_USER_TIMEOUT in tcp.7
To:     Eric Dumazet <edumazet@google.com>
Cc:     linux-man@vger.kernel.org, Enke Chen <enchen@paloaltonetworks.com>
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-GUID: 4miq35XWeEBuf6z16mrDTmpPiLzTtNoW
X-Proofpoint-ORIG-GUID: 4miq35XWeEBuf6z16mrDTmpPiLzTtNoW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-25_08,2022-08-25_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_spam_notspam policy=outbound_spam score=0 adultscore=0
 mlxscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 phishscore=0 bulkscore=0 mlxlogscore=458 spamscore=0 malwarescore=0
 clxscore=1011 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2207270000 definitions=main-2208250072
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

diff --git a/man7/tcp.7 b/man7/tcp.7
index 82de9a2c7..94d26c3bb 100644
--- a/man7/tcp.7
+++ b/man7/tcp.7
@@ -1206,7 +1206,7 @@ corresponding connection and return
 .B ETIMEDOUT
 to the application.
 If the option value is specified as 0,
-TCP will use the system default.
+the option will be disabled.
 .IP
 Increasing user timeouts allows a TCP connection to survive extended
 periods without end-to-end connectivity.
