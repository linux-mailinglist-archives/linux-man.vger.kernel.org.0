Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 899B962702F
	for <lists+linux-man@lfdr.de>; Sun, 13 Nov 2022 16:27:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232884AbiKMP1A (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Nov 2022 10:27:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232676AbiKMP07 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Nov 2022 10:26:59 -0500
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FC06AE5B
        for <linux-man@vger.kernel.org>; Sun, 13 Nov 2022 07:26:57 -0800 (PST)
Received: (Authenticated sender: basile@starynkevitch.net)
        by mail.gandi.net (Postfix) with ESMTPSA id 7C6F81C0003
        for <linux-man@vger.kernel.org>; Sun, 13 Nov 2022 15:26:55 +0000 (UTC)
Message-ID: <fb54184b-be6d-f12b-47bf-c4859d9e70cd@starynkevitch.net>
Date:   Sun, 13 Nov 2022 16:26:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
To:     linux-man@vger.kernel.org
Content-Language: en-US
From:   Basile Starynkevitch <basile@starynkevitch.net>
Subject: The RefPerSys open source artificial intelligence system (and future
 collaboration?)
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I am living near Paris in France and got my PhD in 1990 at Paris LIP6, 
on symbolic artificial intelligence, and running only Linux since 1993 
(both at office and at home)


On github I am https://github.com/bstarynk

On SoftwareEngineering I am 
https://softwareengineering.stackexchange.com/users/40065/basile-starynkevitch

You (or *colleagues or students in computer science or software 
engineering*) could be interested by the /RefPerSys/ -a reflexive& 
persistent system- open source symbolic artificial intelligence system 
(GPLv3+ licensed, for Linux) - *work in progress*

See http://refpersys.org/ for details. (It is in july 2021 - nov. 2022 
an informal project)

It is related to the work of the late Jacques Pitrat (1934 - oct. 2019) 
who was the director of my PhD jury, defended in Paris in 1990.

You probably would enjoy reading both Pitrat's blog, still on 
http://bootstrappingartificialintelligence.fr/WordPress3/ and his last 
book:


  Artificial Beings: the Conscience of a Conscious Machine

ISBN-13: 978-1848211018

(that book also contains something relevant to machine learning with 
metarules)


My professional work at CEA LIST <http://www-list.cea.fr/> in France is 
on cybersecurity on /Bismon/, a static source code analyzer above GCC 
for C and C++ code : code is on https://github.com/bstarynk/bismon and 
funding happens thru the DECODER 
<https://www.decoder-project.eu/>projects. They could end quickly. My 
professional email is basile.starynkevitch@cea.fr.
/RefPerSys/ is currently (2020 to mid 2022) an unofficial project (coded 
with others in C++, and we did consider rewriting it in C for 
non-technical reasons), but I am trying to find some contributors (some 
of them are in India), maybe funds and applications for it (and dream of 
being able to work on, it part time in a few months). It is (as a Linux 
application) orthogonally persistent and generates C++ (and hopefully 
soon C) code. The insight is to generate a lot more and more C or C++ 
code from a more declarative description, as advocated by the late 
Jacques Pitrat.
Perhaps you (or some of your students) could be interested in 
contributing to RefPerSys?

Perhaps you have students or colleagues interested in actively 
contributing to RefPerSys?

Perhaps RefPerSys could be useful to some students, interns, or become a 
starting point for some *fut**ure* ITEA <https://itea4.org/> or 
HorizonEurope proposal....? Or any kind of project which could partly 
fund  or contribute code to RefPerSys? In such case email me also at 
work: basile.starynkevitch@cea.fr


Difference between RefPerSys and Ocaml: RefPerSys has introspection, is 
dynamically typed, and multi-threaded. It is alpha quality.


My constraints are: RefPerSys <http://refpersys.org/> is for Linux 
/only/, and I am only capable of producing PDF documents with LaTeX 
<https://www.latex-project.org//> (but not with Microsoft software) I 
never used in my life any Microsoft Windows operating system (only 
Linux), and at the age of 63 I don't have the time -or the motivation- 
to learn how to use a Microsoft Windows operating system. But I am using 
Linux both at home and at work since 1993.

Some contributors to RefPerSys are living in India, near Kolkotta. In 
particular Abhishek Chakravarti abhishek@taranjali.org

RefPerSys is embryonic (since I am not paid by CEA, LIST 
<https://list.cea.fr/>, my employer, to develop it without funding), and 
all contributors are mostly coding from home.

A mailing list for RefPerSys also exists, archived on 
https://framalistes.org/sympa/arc/refpersys-forum

If interested by RefPerSys <http://refpersys.org/> please compile it and 
give output of ./refpersys --version on your computer. Also try make 
test03 and if possible propose a patch to improve it.

PS. Some code related to RefPerSys stays under 
https://github.com/bstarynk/misc-basile

NB. See also French talks on https://afia.asso.fr/journee-hommage-j-pitrat/

Regards

-- 
Basile Starynkevitch                  <basile@starynkevitch.net>
(only mine opinions / les opinions sont miennes uniquement)
92340 Bourg-la-Reine, France
web page: starynkevitch.net/Basile/

