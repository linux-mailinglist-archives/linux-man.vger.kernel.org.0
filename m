Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A0134D7538
	for <lists+linux-man@lfdr.de>; Sun, 13 Mar 2022 13:39:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233796AbiCMMkg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Mar 2022 08:40:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233772AbiCMMke (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Mar 2022 08:40:34 -0400
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with UTF8SMTPS id E80CB2AC7D
        for <linux-man@vger.kernel.org>; Sun, 13 Mar 2022 05:39:26 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5419F.00000000622DE4CE.00005783; Sun, 13 Mar 2022 13:34:22 +0100
Date:   Sun, 13 Mar 2022 13:34:22 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page ascii.7.po
Message-ID: <20220313123422.GA22388@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=1.9 required=5.0 tests=BAYES_20,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Without further ado, the following was found:

Issue:    In the right table, please add \& markup for end of sentence characters (? ! .) to get proper formatting in other locales. Thanks!

"   2 3 4 5 6 7       30 40 50 60 70 80 90 100 110 120\n"
" -------------      ---------------------------------\n"
"0:   0 @ P \\` p     0:    (  2  E<lt>  F  P  Z  d   n   x\n"
"1: ! 1 A Q a q     1:    )  3  =  G  Q  [  e   o   y\n"
"2: \" 2 B R b r     2:    *  4  E<gt>  H  R  \\e  f   p   z\n"
"3: # 3 C S c s     3: !  +  5  ?  I  S  ]  g   q   {\n"
"4: $ 4 D T d t     4: \"  ,  6  @  J  T  \\(ha  h   r   |\n"
"5: % 5 E U e u     5: #  -  7  A  K  U  _  i   s   }\n"
"6: & 6 F V f v     6: $  .  8  B  L  V  \\`  j   t   \\(ti\n"
"7: \\(aq 7 G W g w     7: %  /  9  C  M  W  a  k   u  DEL\n"
"8: ( 8 H X h x     8: &  0  :  D  N  X  b  l   v\n"
"9: ) 9 I Y i y     9: \\(aq  1  ;  E  O  Y  c  m   w\n"
"A: * : J Z j z\n"
"B: + ; K [ k {\n"
"C: , E<lt> L \\e l |\n"
"D: - = M ] m }\n"
"E: . E<gt> N \\(ha n \\(ti\n"
"F: / ? O _ o DEL\n"
